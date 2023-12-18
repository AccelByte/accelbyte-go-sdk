// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_group

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// AdminUpdateGroupReader is a Reader for the AdminUpdateGroup structure.
type AdminUpdateGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateGroupOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateGroupBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateGroupUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateGroupNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateGroupInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateGroupOK creates a AdminUpdateGroupOK with default headers values
func NewAdminUpdateGroupOK() *AdminUpdateGroupOK {
	return &AdminUpdateGroupOK{}
}

/*AdminUpdateGroupOK handles this case with default header values.

  Group updated
*/
type AdminUpdateGroupOK struct {
	Payload *ugcclientmodels.ModelsCreateGroupResponse
}

func (o *AdminUpdateGroupOK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}][%d] adminUpdateGroupOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateGroupOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminUpdateGroupOK) GetPayload() *ugcclientmodels.ModelsCreateGroupResponse {
	return o.Payload
}

func (o *AdminUpdateGroupOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsCreateGroupResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateGroupBadRequest creates a AdminUpdateGroupBadRequest with default headers values
func NewAdminUpdateGroupBadRequest() *AdminUpdateGroupBadRequest {
	return &AdminUpdateGroupBadRequest{}
}

/*AdminUpdateGroupBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772201</td><td>Malformed request/Invalid request body</td></tr></table>
*/
type AdminUpdateGroupBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateGroupBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}][%d] adminUpdateGroupBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateGroupBadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminUpdateGroupBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateGroupBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateGroupUnauthorized creates a AdminUpdateGroupUnauthorized with default headers values
func NewAdminUpdateGroupUnauthorized() *AdminUpdateGroupUnauthorized {
	return &AdminUpdateGroupUnauthorized{}
}

/*AdminUpdateGroupUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateGroupUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateGroupUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}][%d] adminUpdateGroupUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateGroupUnauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminUpdateGroupUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateGroupUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateGroupNotFound creates a AdminUpdateGroupNotFound with default headers values
func NewAdminUpdateGroupNotFound() *AdminUpdateGroupNotFound {
	return &AdminUpdateGroupNotFound{}
}

/*AdminUpdateGroupNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772203</td><td>Group not found</td></tr></table>
*/
type AdminUpdateGroupNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateGroupNotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}][%d] adminUpdateGroupNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateGroupNotFound) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminUpdateGroupNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateGroupNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateGroupInternalServerError creates a AdminUpdateGroupInternalServerError with default headers values
func NewAdminUpdateGroupInternalServerError() *AdminUpdateGroupInternalServerError {
	return &AdminUpdateGroupInternalServerError{}
}

/*AdminUpdateGroupInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772202</td><td>Unable to update group</td></tr></table>
*/
type AdminUpdateGroupInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateGroupInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}][%d] adminUpdateGroupInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateGroupInternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminUpdateGroupInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateGroupInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
