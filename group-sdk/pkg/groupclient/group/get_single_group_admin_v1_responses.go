// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
)

// GetSingleGroupAdminV1Reader is a Reader for the GetSingleGroupAdminV1 structure.
type GetSingleGroupAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetSingleGroupAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetSingleGroupAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetSingleGroupAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetSingleGroupAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetSingleGroupAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetSingleGroupAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetSingleGroupAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/v1/admin/namespaces/{namespace}/groups/{groupId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetSingleGroupAdminV1OK creates a GetSingleGroupAdminV1OK with default headers values
func NewGetSingleGroupAdminV1OK() *GetSingleGroupAdminV1OK {
	return &GetSingleGroupAdminV1OK{}
}

/*GetSingleGroupAdminV1OK handles this case with default header values.

  OK
*/
type GetSingleGroupAdminV1OK struct {
	Payload *groupclientmodels.ModelsGroupResponseV1
}

func (o *GetSingleGroupAdminV1OK) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/groups/{groupId}][%d] getSingleGroupAdminV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetSingleGroupAdminV1OK) ToJSONString() string {
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

func (o *GetSingleGroupAdminV1OK) GetPayload() *groupclientmodels.ModelsGroupResponseV1 {
	return o.Payload
}

func (o *GetSingleGroupAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsGroupResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSingleGroupAdminV1BadRequest creates a GetSingleGroupAdminV1BadRequest with default headers values
func NewGetSingleGroupAdminV1BadRequest() *GetSingleGroupAdminV1BadRequest {
	return &GetSingleGroupAdminV1BadRequest{}
}

/*GetSingleGroupAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetSingleGroupAdminV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetSingleGroupAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/groups/{groupId}][%d] getSingleGroupAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetSingleGroupAdminV1BadRequest) ToJSONString() string {
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

func (o *GetSingleGroupAdminV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSingleGroupAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSingleGroupAdminV1Unauthorized creates a GetSingleGroupAdminV1Unauthorized with default headers values
func NewGetSingleGroupAdminV1Unauthorized() *GetSingleGroupAdminV1Unauthorized {
	return &GetSingleGroupAdminV1Unauthorized{}
}

/*GetSingleGroupAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetSingleGroupAdminV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetSingleGroupAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/groups/{groupId}][%d] getSingleGroupAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetSingleGroupAdminV1Unauthorized) ToJSONString() string {
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

func (o *GetSingleGroupAdminV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSingleGroupAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSingleGroupAdminV1Forbidden creates a GetSingleGroupAdminV1Forbidden with default headers values
func NewGetSingleGroupAdminV1Forbidden() *GetSingleGroupAdminV1Forbidden {
	return &GetSingleGroupAdminV1Forbidden{}
}

/*GetSingleGroupAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type GetSingleGroupAdminV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetSingleGroupAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/groups/{groupId}][%d] getSingleGroupAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetSingleGroupAdminV1Forbidden) ToJSONString() string {
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

func (o *GetSingleGroupAdminV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSingleGroupAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSingleGroupAdminV1NotFound creates a GetSingleGroupAdminV1NotFound with default headers values
func NewGetSingleGroupAdminV1NotFound() *GetSingleGroupAdminV1NotFound {
	return &GetSingleGroupAdminV1NotFound{}
}

/*GetSingleGroupAdminV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73333</td><td>group not found</td></tr></table>
*/
type GetSingleGroupAdminV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetSingleGroupAdminV1NotFound) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/groups/{groupId}][%d] getSingleGroupAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetSingleGroupAdminV1NotFound) ToJSONString() string {
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

func (o *GetSingleGroupAdminV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSingleGroupAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSingleGroupAdminV1InternalServerError creates a GetSingleGroupAdminV1InternalServerError with default headers values
func NewGetSingleGroupAdminV1InternalServerError() *GetSingleGroupAdminV1InternalServerError {
	return &GetSingleGroupAdminV1InternalServerError{}
}

/*GetSingleGroupAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetSingleGroupAdminV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetSingleGroupAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/groups/{groupId}][%d] getSingleGroupAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetSingleGroupAdminV1InternalServerError) ToJSONString() string {
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

func (o *GetSingleGroupAdminV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSingleGroupAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
