fetch('https://archive-api.open-meteo.com/v1/archive?latitude=52.52&longitude=13.41&start_date=2023-04-10&end_date=2023-04-15&daily=temperature_2m_max&timezone=GMT').then((response) =>{
        console.log('resolved' , response);
        return response.json();
    } ).then(data => {
        console.log(data);
    }).catch((err) => {
        console.log('rejected' , err);
    });
