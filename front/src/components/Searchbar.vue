<template>
    <div class="ui search">
        <div><img src="@/assets/owl1.png" class="owl"></div>
        <div class="ui icon input">
            <input class="prompt" type="text" placeholder=" Owly, Cherche un avis !">
            <i class="search icon"></i>
        </div>
        <div class="results"></div>
    </div>
</template>

<script>
export default {

}
</script>

<style>
.ui.search {
    margin-left:17%;

}

.ui.search .prompt {
    border-radius: 0rem;
    width: 50.0rem;
}

img.owl {
    
    width: 7%;
    vertical-align: baseline;
    margin-bottom: -20px;
    margin-left: -20px;
}

.impout.prompt {
    padding-right: 100px;
}
</style>