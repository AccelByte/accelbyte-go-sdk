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

// GetListOfVariablesV2Reader is a Reader for the GetListOfVariablesV2 structure.
type GetListOfVariablesV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetListOfVariablesV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetListOfVariablesV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetListOfVariablesV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetListOfVariablesV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetListOfVariablesV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetListOfVariablesV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetListOfVariablesV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetListOfVariablesV2OK creates a GetListOfVariablesV2OK with default headers values
func NewGetListOfVariablesV2OK() *GetListOfVariablesV2OK {
	return &GetListOfVariablesV2OK{}
}

/*GetListOfVariablesV2OK handles this case with default header values.


 */
type GetListOfVariablesV2OK struct {
	Payload *csmclientmodels.ApimodelGetListOfConfigurationsV2Response
}

func (o *GetListOfVariablesV2OK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables][%d] getListOfVariablesV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetListOfVariablesV2OK) ToJSONString() string {
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

func (o *GetListOfVariablesV2OK) GetPayload() *csmclientmodels.ApimodelGetListOfConfigurationsV2Response {
	return o.Payload
}

func (o *GetListOfVariablesV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfVariablesV2BadRequest creates a GetListOfVariablesV2BadRequest with default headers values
func NewGetListOfVariablesV2BadRequest() *GetListOfVariablesV2BadRequest {
	return &GetListOfVariablesV2BadRequest{}
}

/*GetListOfVariablesV2BadRequest handles this case with default header values.

  Bad Request
*/
type GetListOfVariablesV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfVariablesV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables][%d] getListOfVariablesV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetListOfVariablesV2BadRequest) ToJSONString() string {
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

func (o *GetListOfVariablesV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfVariablesV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfVariablesV2Unauthorized creates a GetListOfVariablesV2Unauthorized with default headers values
func NewGetListOfVariablesV2Unauthorized() *GetListOfVariablesV2Unauthorized {
	return &GetListOfVariablesV2Unauthorized{}
}

/*GetListOfVariablesV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetListOfVariablesV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfVariablesV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables][%d] getListOfVariablesV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetListOfVariablesV2Unauthorized) ToJSONString() string {
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

func (o *GetListOfVariablesV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfVariablesV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfVariablesV2Forbidden creates a GetListOfVariablesV2Forbidden with default headers values
func NewGetListOfVariablesV2Forbidden() *GetListOfVariablesV2Forbidden {
	return &GetListOfVariablesV2Forbidden{}
}

/*GetListOfVariablesV2Forbidden handles this case with default header values.

  Forbidden
*/
type GetListOfVariablesV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfVariablesV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables][%d] getListOfVariablesV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetListOfVariablesV2Forbidden) ToJSONString() string {
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

func (o *GetListOfVariablesV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfVariablesV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfVariablesV2NotFound creates a GetListOfVariablesV2NotFound with default headers values
func NewGetListOfVariablesV2NotFound() *GetListOfVariablesV2NotFound {
	return &GetListOfVariablesV2NotFound{}
}

/*GetListOfVariablesV2NotFound handles this case with default header values.

  Not Found
*/
type GetListOfVariablesV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfVariablesV2NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables][%d] getListOfVariablesV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetListOfVariablesV2NotFound) ToJSONString() string {
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

func (o *GetListOfVariablesV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfVariablesV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfVariablesV2InternalServerError creates a GetListOfVariablesV2InternalServerError with default headers values
func NewGetListOfVariablesV2InternalServerError() *GetListOfVariablesV2InternalServerError {
	return &GetListOfVariablesV2InternalServerError{}
}

/*GetListOfVariablesV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetListOfVariablesV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListOfVariablesV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables][%d] getListOfVariablesV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetListOfVariablesV2InternalServerError) ToJSONString() string {
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

func (o *GetListOfVariablesV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListOfVariablesV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
