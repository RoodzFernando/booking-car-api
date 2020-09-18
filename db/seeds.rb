makes = %w[Audi Tesla BMW Buick Chevrolet Dodge Ford Ford Toyota Infiniti Lincoln Subaru ]

models = %w[A3 Model3 X2 Enclave Colorado Grand\ Caravan Edge Ranger Rav4 QX50 Navigator Forester]

year = 2020

imgs = %w[
          https://i.gaw.to/vehicles/photos/40/19/401930-2020-audi-a3.jpg?1024x640 
          https://i.gaw.to/vehicles/photos/40/22/402216-2020-tesla-model-3.jpg?1024x640 
          https://i.gaw.to/vehicles/photos/40/19/401952-2020-bmw-x2.jpg?1024x640 
          https://i.gaw.to/vehicles/photos/40/19/401961-2020-buick-enclave.jpg?1024x640 
          https://i.gaw.to/vehicles/photos/40/19/401975-2020-chevrolet-colorado.jpg?1024x640 
          https://i.gaw.to/vehicles/photos/40/19/401992-2020-dodge-grand-caravan.jpg?1024x640 
          https://i.gaw.to/vehicles/photos/40/20/402006-2020-ford-edge.jpg?1024x640 
          https://i.gaw.to/vehicles/photos/40/20/402013-2020-ford-ranger.jpg?1024x640 
          https://i.gaw.to/vehicles/photos/40/22/402209-2020-toyota-rav4.jpg?1024x640 
          https://i.gaw.to/vehicles/photos/40/20/402055-2020-infiniti-qx50.jpg?1024x640 
          https://i.gaw.to/vehicles/photos/40/21/402107-2020-lincoln-navigator.jpg?1024x640 
          https://i.gaw.to/vehicles/photos/40/21/402193-2020-subaru-forester.jpg?1024x640
        ]

prices = [
            '34 500 $ - 65 490 $',  
            '54 610 $ - 74 600 $',  
            '43 100 $ - 49 800 $',  
            '48 198 $ – 62 498 $',  
            '24 098 $ – 51 888 $', 
            '32 295 $ – 47 295 $', 
            '36 299 $ – 49 399 $', 
            '32 159 $ – 42 619 $', 
            '28 090 $ – 42 790 $', 
            '44 998 $ – 58 598 $', 
            '96 000 $ – 99 250 $', 
            '28 695 $ – 39 995 $'
          ]

consommations = [
                  '6.5 - 12.1 L/100km',
                  'N/A ',
                  '7.6 - 10.0 L/100km',
                  '9.1 – 13.6 L/100km',
                  '7.9 – 15.0 L/100km',
                  '9.4 – 13.7 L/100km',
                  '8.1 – 12.8 L/100km',
                  '9.8 – 11.8 L/100km',
                  '5.7 – 9.5 L/100km',
                  '8.3 – 10.8 L/100km',
                  '11.4 – 15.0 L/100km',
                  '7.2 – 9.0 L/100km',
                ]

powers = [
            '184 hp @ 5200 tr/min', 
            '283 hp' ,
            '228 hp @ 5000 tr/min', 
            '310 hp @ 6800 tr/min', 
            '200 hp @ 6300 tr/min', 
            '283 hp @ 6400 tr/min', 
            '250 hp @ 5500 tr/min', 
            '270 hp @ 5500 tr/min', 
            '203 hp @ 6800 tr/min', 
            '268 hp @ 5600 tr/min',
            '450 hp @ 5500 tr/min', 
            '182 hp @ 5800 tr/min'
          ]

motors = [
            '4L 2.0 l',
            'Electric',
            '4L 2.0 l',
            'V6 3.6 l',
            '4L 2.5 l',
            'V6 3.6 l',
            '4L 2.0 l',
            '4L 2.3 l',
            '4L 2.5 l',
            '4L 2.0 l',
            'V6 3.5 l',
            'H4 2.5 l'
          ]

12.times do |i|
  Car.create(
      make: makes[i], 
      model: models[i],
      model_year: year,
      image_url: imgs[i],
      price: prices[i],
      consommation: consommations[i],
      power: powers[i],
      motor: motors[i]
    )
end