// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration_v2

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

// GetListOfSecretsV2Reader is a Reader for the GetListOfSecretsV2 structure.
type GetListOfSecretsV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetListOfSecretsV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetListOfSecretsV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetListOfSecretsV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetListOfSecretsV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetListOfSecretsV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetListOfSecretsV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetListOfSecretsV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetListOfSecretsV2OK creates a GetListOfSecretsV2OK with default headers values
func NewGetListOfSecretsV2OK() *GetListOfSecretsV2OK {
	return &GetListOfSecretsV2OK{}
}

/*GetListOfSecretsV2OK handles this case with default header values.


 */
type GetListOfSecretsV2OK struct {
	Payload *csmclientmodels.ApimodelGetListOfConfigurationsV2Response
}

func (o *GetListOfSecretsV2OK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets][%d] getListOfSecretsV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetListOfSecretsV2OK) ToJSONString() string {
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

func (o *GetListOfSecretsV2OK) GetPayload() *csmclientmodels.ApimodelGetListOfConfigurationsV2Response {
	return o.Payload
}

func (o *GetListOfSecretsV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelGetListOfConfigurationsV2Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetListOfSecretsV2BadRequest creates a GetListOfSecretsV2BadRequest with default headers values
func NewGetListOfSecretsV2BadRequest() *GetListOfSecretsV2BadRequest {
	return &GetListOfSecretsV2BadRequest{}
}

/*GetListOfSecretsV2BadRequest handles this case with default header values.

  Bad Request
*/
type GetListOfSecretsV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfSecretsV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets][%d] getListOfSecretsV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetListOfSecretsV2BadRequest) ToJSONString() string {
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

func (o *GetListOfSecretsV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfSecretsV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfSecretsV2Unauthorized creates a GetListOfSecretsV2Unauthorized with default headers values
func NewGetListOfSecretsV2Unauthorized() *GetListOfSecretsV2Unauthorized {
	return &GetListOfSecretsV2Unauthorized{}
}

/*GetListOfSecretsV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetListOfSecretsV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfSecretsV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets][%d] getListOfSecretsV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetListOfSecretsV2Unauthorized) ToJSONString() string {
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

func (o *GetListOfSecretsV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfSecretsV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfSecretsV2Forbidden creates a GetListOfSecretsV2Forbidden with default headers values
func NewGetListOfSecretsV2Forbidden() *GetListOfSecretsV2Forbidden {
	return &GetListOfSecretsV2Forbidden{}
}

/*GetListOfSecretsV2Forbidden handles this case with default header values.

  Forbidden
*/
type GetListOfSecretsV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfSecretsV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets][%d] getListOfSecretsV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetListOfSecretsV2Forbidden) ToJSONString() string {
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

func (o *GetListOfSecretsV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfSecretsV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfSecretsV2NotFound creates a GetListOfSecretsV2NotFound with default headers values
func NewGetListOfSecretsV2NotFound() *GetListOfSecretsV2NotFound {
	return &GetListOfSecretsV2NotFound{}
}

/*GetListOfSecretsV2NotFound handles this case with default header values.

  Not Found
*/
type GetListOfSecretsV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfSecretsV2NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets][%d] getListOfSecretsV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetListOfSecretsV2NotFound) ToJSONString() string {
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

func (o *GetListOfSecretsV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfSecretsV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfSecretsV2InternalServerError creates a GetListOfSecretsV2InternalServerError with default headers values
func NewGetListOfSecretsV2InternalServerError() *GetListOfSecretsV2InternalServerError {
	return &GetListOfSecretsV2InternalServerError{}
}

/*GetListOfSecretsV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetListOfSecretsV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfSecretsV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets][%d] getListOfSecretsV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetListOfSecretsV2InternalServerError) ToJSONString() string {
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

func (o *GetListOfSecretsV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfSecretsV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
