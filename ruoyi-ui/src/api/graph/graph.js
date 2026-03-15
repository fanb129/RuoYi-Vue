import request from '@/utils/request'

// 查询我的图库列表
export function listGraph(query) {
  return request({
    url: '/graph/graph/list',
    method: 'get',
    params: query
  })
}

// 查询我的图库详细
export function getGraph(graphId) {
  return request({
    url: '/graph/graph/' + graphId,
    method: 'get'
  })
}

// 新增我的图库
export function addGraph(data) {
  return request({
    url: '/graph/graph',
    method: 'post',
    data: data
  })
}

// 修改我的图库
export function updateGraph(data) {
  return request({
    url: '/graph/graph',
    method: 'put',
    data: data
  })
}

// 删除我的图库
export function delGraph(graphId) {
  return request({
    url: '/graph/graph/' + graphId,
    method: 'delete'
  })
}
