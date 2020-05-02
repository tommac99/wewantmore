# frozen_string_literal: true

module Api
  module V1
    class PostsController < BaseController
      def index
        posts = Post.all
        render json: posts
        # Make sure we run our products through the policy_scope
        # paginate(json: policy_scope(records))
      end

      def create
        # product = Product.new(product_params)
        # authorize(product)

        # if product.save
        #   render json: product, status: :created
        # else
        #   render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
        # end
      end

      def update # rubocop:disable Metrics/AbcSize
      #   product = Product.find(params[:id])
      #   authorize(product)

      #   if product.update(product_params)
      #     # TOTAL HACK
      #     params[:variants_attributes]&.each do |variant|
      #       next unless variant[:studio_images]

      #       var = product.variants.find_by(id: variant[:id])

      #       var&.update!(studio_images: variant[:studio_images])
      #     end

      #     render json: product
      #   else
      #     render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
      #   end
      # rescue ActiveRecord::RecordNotUnique
      #   render json: { errors: ['Make sure the EAN is unique'] }, status: :unprocessable_entity
      end

      def destroy
        # product = Product.find(params[:id])
        # authorize(product)

        # if product.destroy
        #   render json: product
        # else
        #   render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
        # end
      end

      private

      def post_params # rubocop:disable Metrics/MethodLength
        params.permit(
          :title,
          :caption,
          :url,
          :post_image,
          :post_video_url
        )
      end
    end
  end
end
