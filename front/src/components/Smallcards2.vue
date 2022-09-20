<template>
  <div class="card">
       <div class="card-img"><img src="https://cdn.pixabay.com/photo/2022/05/20/19/05/common-house-martin-7210082_960_720.jpg" alt=""></div>
       <div class="card-title">Lorem ipsum dolor sit amet.</div>
       <div class="card-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In iaculis auctor sagittis. </div>
       <div class="card-link"><a href="">More</a><span class="more-bottom"></span></div>
    </div>
</template>

<script>
export default {

}
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400;600;700;900&display=swap');


    .card{
        width: 300px;
        height: auto;
        background-color: #DFDFDE;
        border-radius: 15px;
        font-family: 'Source Sans Pro', sans-serif;
          box-shadow: 3px 0 2.4em black;
          margin-top: 20px;
    }
    .card-img{
        display: flex;
        justify-content: center;
            align-items: center;
            width: 100%;
            height: 55%;
            border-radius: 15px 15px 0px 0px;
        }
            img{
                width: 100%;
                height: 100%;
                border-radius: 15px 15px 0px 0px;
            }

        .card-title{
            display: flex;
            justify-content: center;
            align-items: center;
            width: 90%;
            height: 60px;
            text-align: center;
            margin: auto;
            margin-top: 10px;
            font-weight: 900;
            font-size: 20px;
            color: #2B2B2B;
        }
        .card-content{
            display: flex;
            align-items: center;
            text-align: center;
            width: 90%;
            height: auto;
            margin: auto;
            margin-top: 6px;
            font-weight: 600;
            overflow: hidden;
            color: #7F8487;
        }
        .card-link{
            width: 80%;
            height: 30px;
            margin: auto;
            margin-top: 10px;
            margin-bottom: 10px;
        }
            a{
                display: flex;
                justify-content: center;
                align-items: center;
                width: 100%;
                height: 100%;
                text-decoration: none;
                color: #7F8487;
            }
            .more-bottom{
                display: flex;
                justify-content: center;
                align-items: center;
                width: 40px;
                height: 2px;
                background-color: #7F8487;
                transition: 1s;
                margin: auto;
            }
            .more-bottom, a:hover{
                    color: #2B2B2B;
                }
                .more-bottom{
                    background-color: #2B2B2B;
                    transition: 0.8s;
                    transform: scaleX(6);
                }
</style>