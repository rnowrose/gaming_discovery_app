# Use official Ruby image
FROM ruby:3.2

# Install dependencies
RUN apt-get update -qq && apt-get install -y \
    nodejs \
    postgresql-client \
    build-essential \
    libpq-dev

# Set working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the application code
COPY . .

# Precompile assets (for production)
# RUN bundle exec rails assets:precompile

# Expose port 3000
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]