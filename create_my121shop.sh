#!/bin/bash

# Project Root
mkdir -p My121shop
cd My121shop || exit

# Root files
touch .env.example .env.local .firebaserc .gitignore .eslintrc.cjs .prettierrc README.md \
      firebase.json firestore.indexes.json firestore.rules package.json postcss.config.js \
      service-worker.js storage.rules tailwind.config.js vite.config.js workbox-config.js
mkdir -p .vscode && touch .vscode/settings.json

# Functions
mkdir -p functions/helpers functions/schedulers
touch functions/index.js functions/package.json
touch functions/helpers/{admin.js,abandonedCart.js,cod.js,csvImport.js,invoices.js,notifications.js,payouts.js,paypal.js,qr.js,razorpay.js,recommendations.js,wallet.js}
touch functions/schedulers/{index.js,package.json}

# Public
mkdir -p public/icons public/qrcodes
touch public/{favicon.svg,logo.svg,manifest.json,robots.txt}

# SRC
mkdir -p src/{components,context,hooks,pages/{Admin,Rider,Vendor},services,utils}
touch src/{App.jsx,firebase.js,index.css,main.jsx,router.jsx,sw-registration.js}

# Components
touch src/components/{AddToCartButton.jsx,AddressForm.jsx,AdminOrderRow.jsx,AdminProductForm.jsx,AdminRoute.jsx,AdminSidebar.jsx,CSVUploader.jsx,ChartCard.jsx,CheckoutButton.jsx,ConfirmDialog.jsx,CouponInput.jsx,FlashSaleBadge.jsx,FlashSaleBanner.jsx,Footer.jsx,ImageUploader.jsx,LoadingSpinner.jsx,LoyaltyWidget.jsx,Navbar.jsx,NotificationToast.jsx,OrderStatusStepper.jsx,Pagination.jsx,PaymentMethodSelector.jsx,PaymentSummary.jsx,PreOrderBadge.jsx,PriceTag.jsx,ProductCard.jsx,ProtectedRoute.jsx,QRConfirm.jsx,QRScanner.jsx,QuantitySelector.jsx,RatingStars.jsx,ReferralWidget.jsx,RiderMap.jsx,RiderOrderCard.jsx,RiderRoute.jsx,SavedInstruments.jsx,SearchBar.jsx,StockAlertButton.jsx,VariantSelector.jsx,VendorRoute.jsx,VendorSidebar.jsx,ReviewForm.jsx,ReviewList.jsx,ChatBox.jsx,VendorProfileCard.jsx}

# Context
touch src/context/{AdminContext.jsx,AuthContext.jsx,CartContext.jsx,LoyaltyContext.jsx,ReferralContext.jsx,AffiliateContext.jsx}

# Hooks
touch src/hooks/{useAuth.js,useCart.js,useDebounce.js,useDeliverySlots.js,useFirestoreQuery.js,useFlashSaleTimer.js,useLoyalty.js,useNotifications.js,usePWA.js,usePaymentMethods.js,useReferral.js,useVariants.js}

# Pages
touch src/pages/{Cart.jsx,Checkout.jsx,Home.jsx,Login.jsx,NotFound.jsx,OrderDetails.jsx,Orders.jsx,ProductDetails.jsx,Profile.jsx,Signup.jsx,Wishlist.jsx,WishlistShare.jsx,ResellerDashboard.jsx}

# Admin Pages
touch src/pages/Admin/{BulkUpload.jsx,Cancellations.jsx,Coupons.jsx,Dashboard.jsx,FlashSales.jsx,Orders.jsx,Payouts.jsx,PreOrders.jsx,ProductEdit.jsx,Products.jsx,Reports.jsx,Riders.jsx,Settings.jsx,StockAlerts.jsx,Vendors.jsx,Analytics.jsx,Returns.jsx}

# Rider Pages
touch src/pages/Rider/{RiderOrderDetails.jsx,RiderPanel.jsx}

# Vendor Pages
touch src/pages/Vendor/{VendorOrders.jsx,VendorPanel.jsx,VendorPayouts.jsx,VendorProducts.jsx,VendorStorefront.jsx}

# Services
touch src/services/{cancellations.js,coupons.js,deliverySlots.js,flashSales.js,invoices.js,loyalty.js,notifications.js,orders.js,payments.js,payouts.js,preorders.js,products.js,recommendations.js,referral.js,reports.js,riders.js,stockAlerts.js,storage.js,variants.js,vendor.js,wallet.js,affiliate.js,commissions.js,shipping.js,search.js,reviews.js,inventorySync.js,returns.js,chat.js}

# Utils
touch src/utils/{aiRecommendations.js,barcode.js,constants.js,currency.js,dates.js,firebaseCollections.js,geo.js,paypal.js,pwa.js,qr.js,razorpay.js,validators.js,filters.js}

echo "✅ My121shop project structure created successfully!"
