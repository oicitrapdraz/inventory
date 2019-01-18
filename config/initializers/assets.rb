# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( line-icons.css )
Rails.application.config.assets.precompile += %w( owl.carousel.css )
Rails.application.config.assets.precompile += %w( owl.theme.css )
Rails.application.config.assets.precompile += %w( nivo-lightbox.css )
Rails.application.config.assets.precompile += %w( magnific-popup.css )
Rails.application.config.assets.precompile += %w( animate.css )
Rails.application.config.assets.precompile += %w( color-switcher.css )
Rails.application.config.assets.precompile += %w( menu_sideslide.css )
Rails.application.config.assets.precompile += %w( main.css )
Rails.application.config.assets.precompile += %w( responsive.css )

Rails.application.config.assets.precompile += %w( jquery-min.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( popper.min.js )
Rails.application.config.assets.precompile += %w( classie.js )
Rails.application.config.assets.precompile += %w( color-switcher.js )
Rails.application.config.assets.precompile += %w( jquery.mixitup.js )
Rails.application.config.assets.precompile += %w( nivo-lightbox.js )
Rails.application.config.assets.precompile += %w( owl.carousel.js )    
Rails.application.config.assets.precompile += %w( jquery.stellar.min.js )    
Rails.application.config.assets.precompile += %w( jquery.nav.js )    
Rails.application.config.assets.precompile += %w( scrolling-nav.js )    
Rails.application.config.assets.precompile += %w( jquery.easing.min.js )     
Rails.application.config.assets.precompile += %w( wow.js ) 
Rails.application.config.assets.precompile += %w( jquery.vide.js )
Rails.application.config.assets.precompile += %w( jquery.counterup.min.js )    
Rails.application.config.assets.precompile += %w( jquery.magnific-popup.min.js )    
Rails.application.config.assets.precompile += %w( waypoints.min.js )    
Rails.application.config.assets.precompile += %w( form-validator.min.js )
Rails.application.config.assets.precompile += %w( contact-form-script.js )   
Rails.application.config.assets.precompile += %w( main.js )