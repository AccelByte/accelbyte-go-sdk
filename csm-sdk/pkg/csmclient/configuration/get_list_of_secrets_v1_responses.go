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

// GetListOfSecretsV1Reader is a Reader for the GetListOfSecretsV1 structure.
type GetListOfSecretsV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetListOfSecretsV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetListOfSecretsV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetListOfSecretsV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetListOfSecretsV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetListOfSecretsV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetListOfSecretsV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetListOfSecretsV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetListOfSecretsV1OK creates a GetListOfSecretsV1OK with default headers values
func NewGetListOfSecretsV1OK() *GetListOfSecretsV1OK {
	return &GetListOfSecretsV1OK{}
}

/*GetListOfSecretsV1OK handles this case with default header values.


 */
type GetListOfSecretsV1OK struct {
	Payload *csmclientmodels.GeneratedGetListOfConfigurationsV1Response
}

func (o *GetListOfSecretsV1OK) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets][%d] getListOfSecretsV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetListOfSecretsV1OK) ToJSONString() string {
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

func (o *GetListOfSecretsV1OK) GetPayload() *csmclientmodels.GeneratedGetListOfConfigurationsV1Response {
	return o.Payload
}

func (o *GetListOfSecretsV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfSecretsV1BadRequest creates a GetListOfSecretsV1BadRequest with default headers values
func NewGetListOfSecretsV1BadRequest() *GetListOfSecretsV1BadRequest {
	return &GetListOfSecretsV1BadRequest{}
}

/*GetListOfSecretsV1BadRequest handles this case with default header values.

  Bad Request
*/
type GetListOfSecretsV1BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfSecretsV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets][%d] getListOfSecretsV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetListOfSecretsV1BadRequest) ToJSONString() string {
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

func (o *GetListOfSecretsV1BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfSecretsV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfSecretsV1Unauthorized creates a GetListOfSecretsV1Unauthorized with default headers values
func NewGetListOfSecretsV1Unauthorized() *GetListOfSecretsV1Unauthorized {
	return &GetListOfSecretsV1Unauthorized{}
}

/*GetListOfSecretsV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetListOfSecretsV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfSecretsV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets][%d] getListOfSecretsV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetListOfSecretsV1Unauthorized) ToJSONString() string {
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

func (o *GetListOfSecretsV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfSecretsV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfSecretsV1Forbidden creates a GetListOfSecretsV1Forbidden with default headers values
func NewGetListOfSecretsV1Forbidden() *GetListOfSecretsV1Forbidden {
	return &GetListOfSecretsV1Forbidden{}
}

/*GetListOfSecretsV1Forbidden handles this case with default header values.

  Forbidden
*/
type GetListOfSecretsV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfSecretsV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets][%d] getListOfSecretsV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetListOfSecretsV1Forbidden) ToJSONString() string {
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

func (o *GetListOfSecretsV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfSecretsV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfSecretsV1NotFound creates a GetListOfSecretsV1NotFound with default headers values
func NewGetListOfSecretsV1NotFound() *GetListOfSecretsV1NotFound {
	return &GetListOfSecretsV1NotFound{}
}

/*GetListOfSecretsV1NotFound handles this case with default header values.

  Not Found
*/
type GetListOfSecretsV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfSecretsV1NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets][%d] getListOfSecretsV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetListOfSecretsV1NotFound) ToJSONString() string {
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

func (o *GetListOfSecretsV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfSecretsV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfSecretsV1InternalServerError creates a GetListOfSecretsV1InternalServerError with default headers values
func NewGetListOfSecretsV1InternalServerError() *GetListOfSecretsV1InternalServerError {
	return &GetListOfSecretsV1InternalServerError{}
}

/*GetListOfSecretsV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetListOfSecretsV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfSecretsV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets][%d] getListOfSecretsV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetListOfSecretsV1InternalServerError) ToJSONString() string {
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

func (o *GetListOfSecretsV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfSecretsV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
