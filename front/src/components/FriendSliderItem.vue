<template>
    <div class="sliderItem" @click="chat.updateChatDirect(props.user)">
        <div class="sliderImg" :style="`background-image: url('${props.user?.imgPath}')`">
        </div>
        <p>{{props.user.displayName.slice(0,10)}}</p>
    </div>
</template>

<script lang="ts" setup>
    import {defineProps} from 'vue'
    import {useChatStore} from '@/stores/chat';

    const chat = useChatStore();
    let props = defineProps({
        user:{
            type: Object,
            required: true
        }
    });
</script>

<style scoped>
    .sliderItem{
        display: inline-block;
        width: 100px;
    }

    .sliderItem p{
        font-size: 15px;
        text-align: center;
        cursor: pointer;
    }

    .sliderImg{
        width: 80px;
        height: 80px;
        display: inline-block;
        margin: 0px 10px;
        border-radius: 80px;
        cursor: pointer;
        background-size: cover;
        background-position: center;
    }
</style>