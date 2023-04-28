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

// GetGroupConfigurationAdminV1Reader is a Reader for the GetGroupConfigurationAdminV1 structure.
type GetGroupConfigurationAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetGroupConfigurationAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetGroupConfigurationAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetGroupConfigurationAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetGroupConfigurationAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetGroupConfigurationAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetGroupConfigurationAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetGroupConfigurationAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetGroupConfigurationAdminV1OK creates a GetGroupConfigurationAdminV1OK with default headers values
func NewGetGroupConfigurationAdminV1OK() *GetGroupConfigurationAdminV1OK {
	return &GetGroupConfigurationAdminV1OK{}
}

/*GetGroupConfigurationAdminV1OK handles this case with default header values.

  OK
*/
type GetGroupConfigurationAdminV1OK struct {
	Payload *groupclientmodels.ModelsGetGroupConfigurationResponseV1
}

func (o *GetGroupConfigurationAdminV1OK) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}][%d] getGroupConfigurationAdminV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetGroupConfigurationAdminV1OK) ToJSONString() string {
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

func (o *GetGroupConfigurationAdminV1OK) GetPayload() *groupclientmodels.ModelsGetGroupConfigurationResponseV1 {
	return o.Payload
}

func (o *GetGroupConfigurationAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsGetGroupConfigurationResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetGroupConfigurationAdminV1BadRequest creates a GetGroupConfigurationAdminV1BadRequest with default headers values
func NewGetGroupConfigurationAdminV1BadRequest() *GetGroupConfigurationAdminV1BadRequest {
	return &GetGroupConfigurationAdminV1BadRequest{}
}

/*GetGroupConfigurationAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetGroupConfigurationAdminV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupConfigurationAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}][%d] getGroupConfigurationAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetGroupConfigurationAdminV1BadRequest) ToJSONString() string {
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

func (o *GetGroupConfigurationAdminV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupConfigurationAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGroupConfigurationAdminV1Unauthorized creates a GetGroupConfigurationAdminV1Unauthorized with default headers values
func NewGetGroupConfigurationAdminV1Unauthorized() *GetGroupConfigurationAdminV1Unauthorized {
	return &GetGroupConfigurationAdminV1Unauthorized{}
}

/*GetGroupConfigurationAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetGroupConfigurationAdminV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupConfigurationAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}][%d] getGroupConfigurationAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetGroupConfigurationAdminV1Unauthorized) ToJSONString() string {
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

func (o *GetGroupConfigurationAdminV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupConfigurationAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGroupConfigurationAdminV1Forbidden creates a GetGroupConfigurationAdminV1Forbidden with default headers values
func NewGetGroupConfigurationAdminV1Forbidden() *GetGroupConfigurationAdminV1Forbidden {
	return &GetGroupConfigurationAdminV1Forbidden{}
}

/*GetGroupConfigurationAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type GetGroupConfigurationAdminV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupConfigurationAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}][%d] getGroupConfigurationAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetGroupConfigurationAdminV1Forbidden) ToJSONString() string {
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

func (o *GetGroupConfigurationAdminV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupConfigurationAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGroupConfigurationAdminV1NotFound creates a GetGroupConfigurationAdminV1NotFound with default headers values
func NewGetGroupConfigurationAdminV1NotFound() *GetGroupConfigurationAdminV1NotFound {
	return &GetGroupConfigurationAdminV1NotFound{}
}

/*GetGroupConfigurationAdminV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73131</td><td>global configuration not found</td></tr></table>
*/
type GetGroupConfigurationAdminV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupConfigurationAdminV1NotFound) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}][%d] getGroupConfigurationAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetGroupConfigurationAdminV1NotFound) ToJSONString() string {
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

func (o *GetGroupConfigurationAdminV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupConfigurationAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGroupConfigurationAdminV1InternalServerError creates a GetGroupConfigurationAdminV1InternalServerError with default headers values
func NewGetGroupConfigurationAdminV1InternalServerError() *GetGroupConfigurationAdminV1InternalServerError {
	return &GetGroupConfigurationAdminV1InternalServerError{}
}

/*GetGroupConfigurationAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetGroupConfigurationAdminV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupConfigurationAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}][%d] getGroupConfigurationAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetGroupConfigurationAdminV1InternalServerError) ToJSONString() string {
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

func (o *GetGroupConfigurationAdminV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupConfigurationAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
