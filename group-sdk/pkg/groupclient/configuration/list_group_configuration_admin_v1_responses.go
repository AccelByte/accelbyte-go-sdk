// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration

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

// ListGroupConfigurationAdminV1Reader is a Reader for the ListGroupConfigurationAdminV1 structure.
type ListGroupConfigurationAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListGroupConfigurationAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListGroupConfigurationAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListGroupConfigurationAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListGroupConfigurationAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewListGroupConfigurationAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewListGroupConfigurationAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListGroupConfigurationAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/v1/admin/namespaces/{namespace}/configuration returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListGroupConfigurationAdminV1OK creates a ListGroupConfigurationAdminV1OK with default headers values
func NewListGroupConfigurationAdminV1OK() *ListGroupConfigurationAdminV1OK {
	return &ListGroupConfigurationAdminV1OK{}
}

/*ListGroupConfigurationAdminV1OK handles this case with default header values.

  OK
*/
type ListGroupConfigurationAdminV1OK struct {
	Payload *groupclientmodels.ModelsListConfigurationResponseV1
}

func (o *ListGroupConfigurationAdminV1OK) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/configuration][%d] listGroupConfigurationAdminV1OK  %+v", 200, o.ToJSONString())
}

func (o *ListGroupConfigurationAdminV1OK) ToJSONString() string {
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

func (o *ListGroupConfigurationAdminV1OK) GetPayload() *groupclientmodels.ModelsListConfigurationResponseV1 {
	return o.Payload
}

func (o *ListGroupConfigurationAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsListConfigurationResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListGroupConfigurationAdminV1BadRequest creates a ListGroupConfigurationAdminV1BadRequest with default headers values
func NewListGroupConfigurationAdminV1BadRequest() *ListGroupConfigurationAdminV1BadRequest {
	return &ListGroupConfigurationAdminV1BadRequest{}
}

/*ListGroupConfigurationAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type ListGroupConfigurationAdminV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *ListGroupConfigurationAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/configuration][%d] listGroupConfigurationAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListGroupConfigurationAdminV1BadRequest) ToJSONString() string {
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

func (o *ListGroupConfigurationAdminV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ListGroupConfigurationAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListGroupConfigurationAdminV1Unauthorized creates a ListGroupConfigurationAdminV1Unauthorized with default headers values
func NewListGroupConfigurationAdminV1Unauthorized() *ListGroupConfigurationAdminV1Unauthorized {
	return &ListGroupConfigurationAdminV1Unauthorized{}
}

/*ListGroupConfigurationAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type ListGroupConfigurationAdminV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *ListGroupConfigurationAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/configuration][%d] listGroupConfigurationAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListGroupConfigurationAdminV1Unauthorized) ToJSONString() string {
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

func (o *ListGroupConfigurationAdminV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ListGroupConfigurationAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListGroupConfigurationAdminV1Forbidden creates a ListGroupConfigurationAdminV1Forbidden with default headers values
func NewListGroupConfigurationAdminV1Forbidden() *ListGroupConfigurationAdminV1Forbidden {
	return &ListGroupConfigurationAdminV1Forbidden{}
}

/*ListGroupConfigurationAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type ListGroupConfigurationAdminV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *ListGroupConfigurationAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/configuration][%d] listGroupConfigurationAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *ListGroupConfigurationAdminV1Forbidden) ToJSONString() string {
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

func (o *ListGroupConfigurationAdminV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ListGroupConfigurationAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListGroupConfigurationAdminV1NotFound creates a ListGroupConfigurationAdminV1NotFound with default headers values
func NewListGroupConfigurationAdminV1NotFound() *ListGroupConfigurationAdminV1NotFound {
	return &ListGroupConfigurationAdminV1NotFound{}
}

/*ListGroupConfigurationAdminV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73131</td><td>global configuration not found</td></tr></table>
*/
type ListGroupConfigurationAdminV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *ListGroupConfigurationAdminV1NotFound) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/configuration][%d] listGroupConfigurationAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *ListGroupConfigurationAdminV1NotFound) ToJSONString() string {
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

func (o *ListGroupConfigurationAdminV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ListGroupConfigurationAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListGroupConfigurationAdminV1InternalServerError creates a ListGroupConfigurationAdminV1InternalServerError with default headers values
func NewListGroupConfigurationAdminV1InternalServerError() *ListGroupConfigurationAdminV1InternalServerError {
	return &ListGroupConfigurationAdminV1InternalServerError{}
}

/*ListGroupConfigurationAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListGroupConfigurationAdminV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *ListGroupConfigurationAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/configuration][%d] listGroupConfigurationAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListGroupConfigurationAdminV1InternalServerError) ToJSONString() string {
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

func (o *ListGroupConfigurationAdminV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ListGroupConfigurationAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
