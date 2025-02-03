# frozen_string_literal: true

module RuboCop
  module Cop
    module CustomCops
      class CommonSense < RuboCop::Cop::Base
        MSG = 'Avoid using the term "black list". Consider using "block list" or "deny list" instead.'

        def on_send(node)
          check_for_non_inclusive_names(node)
        end

        def on_str(node)
          check_for_non_inclusive_names(node)
        end

        def on_sym(node)
          check_for_non_inclusive_names(node)
        end

        def on_def(node)
          check_for_non_inclusive_names(node)
        end

        def on_class(node)
          check_for_non_inclusive_names(node)
        end

        def on_module(node)
          check_for_non_inclusive_names(node)
        end

        private

        def check_for_non_inclusive_names(node)
          return unless node.source.match?(/\bblack[_\s]?list\b/i)

          add_offense(node, message: MSG)
        end
      end
    end
  end
end
