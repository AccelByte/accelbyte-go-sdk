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

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// GetListOfVariablesV1Reader is a Reader for the GetListOfVariablesV1 structure.
type GetListOfVariablesV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetListOfVariablesV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetListOfVariablesV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetListOfVariablesV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetListOfVariablesV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetListOfVariablesV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetListOfVariablesV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetListOfVariablesV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetListOfVariablesV1OK creates a GetListOfVariablesV1OK with default headers values
func NewGetListOfVariablesV1OK() *GetListOfVariablesV1OK {
	return &GetListOfVariablesV1OK{}
}

/*GetListOfVariablesV1OK handles this case with default header values.


 */
type GetListOfVariablesV1OK struct {
	Payload *csmclientmodels.GeneratedGetListOfConfigurationsV1Response
}

func (o *GetListOfVariablesV1OK) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables][%d] getListOfVariablesV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetListOfVariablesV1OK) ToJSONString() string {
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

func (o *GetListOfVariablesV1OK) GetPayload() *csmclientmodels.GeneratedGetListOfConfigurationsV1Response {
	return o.Payload
}

func (o *GetListOfVariablesV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.GeneratedGetListOfConfigurationsV1Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetListOfVariablesV1BadRequest creates a GetListOfVariablesV1BadRequest with default headers values
func NewGetListOfVariablesV1BadRequest() *GetListOfVariablesV1BadRequest {
	return &GetListOfVariablesV1BadRequest{}
}

/*GetListOfVariablesV1BadRequest handles this case with default header values.

  Bad Request
*/
type GetListOfVariablesV1BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfVariablesV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables][%d] getListOfVariablesV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetListOfVariablesV1BadRequest) ToJSONString() string {
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

func (o *GetListOfVariablesV1BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfVariablesV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetListOfVariablesV1Unauthorized creates a GetListOfVariablesV1Unauthorized with default headers values
func NewGetListOfVariablesV1Unauthorized() *GetListOfVariablesV1Unauthorized {
	return &GetListOfVariablesV1Unauthorized{}
}

/*GetListOfVariablesV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetListOfVariablesV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfVariablesV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables][%d] getListOfVariablesV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetListOfVariablesV1Unauthorized) ToJSONString() string {
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

func (o *GetListOfVariablesV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfVariablesV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetListOfVariablesV1Forbidden creates a GetListOfVariablesV1Forbidden with default headers values
func NewGetListOfVariablesV1Forbidden() *GetListOfVariablesV1Forbidden {
	return &GetListOfVariablesV1Forbidden{}
}

/*GetListOfVariablesV1Forbidden handles this case with default header values.

  Forbidden
*/
type GetListOfVariablesV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfVariablesV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables][%d] getListOfVariablesV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetListOfVariablesV1Forbidden) ToJSONString() string {
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

func (o *GetListOfVariablesV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfVariablesV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetListOfVariablesV1NotFound creates a GetListOfVariablesV1NotFound with default headers values
func NewGetListOfVariablesV1NotFound() *GetListOfVariablesV1NotFound {
	return &GetListOfVariablesV1NotFound{}
}

/*GetListOfVariablesV1NotFound handles this case with default header values.

  Not Found
*/
type GetListOfVariablesV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfVariablesV1NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables][%d] getListOfVariablesV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetListOfVariablesV1NotFound) ToJSONString() string {
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

func (o *GetListOfVariablesV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfVariablesV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetListOfVariablesV1InternalServerError creates a GetListOfVariablesV1InternalServerError with default headers values
func NewGetListOfVariablesV1InternalServerError() *GetListOfVariablesV1InternalServerError {
	return &GetListOfVariablesV1InternalServerError{}
}

/*GetListOfVariablesV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetListOfVariablesV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfVariablesV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables][%d] getListOfVariablesV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetListOfVariablesV1InternalServerError) ToJSONString() string {
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

func (o *GetListOfVariablesV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfVariablesV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
