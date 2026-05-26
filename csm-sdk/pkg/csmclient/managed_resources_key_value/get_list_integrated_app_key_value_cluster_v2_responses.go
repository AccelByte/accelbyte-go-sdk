// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package managed_resources_key_value

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

// GetListIntegratedAppKeyValueClusterV2Reader is a Reader for the GetListIntegratedAppKeyValueClusterV2 structure.
type GetListIntegratedAppKeyValueClusterV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetListIntegratedAppKeyValueClusterV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetListIntegratedAppKeyValueClusterV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetListIntegratedAppKeyValueClusterV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetListIntegratedAppKeyValueClusterV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetListIntegratedAppKeyValueClusterV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetListIntegratedAppKeyValueClusterV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{namespace}/keyvalue/{resourceId}/integrations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetListIntegratedAppKeyValueClusterV2OK creates a GetListIntegratedAppKeyValueClusterV2OK with default headers values
func NewGetListIntegratedAppKeyValueClusterV2OK() *GetListIntegratedAppKeyValueClusterV2OK {
	return &GetListIntegratedAppKeyValueClusterV2OK{}
}

/*GetListIntegratedAppKeyValueClusterV2OK handles this case with default header values.

  OK
*/
type GetListIntegratedAppKeyValueClusterV2OK struct {
	Payload *csmclientmodels.ApimodelListIntegratedAppsKeyValueResponse
}

func (o *GetListIntegratedAppKeyValueClusterV2OK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/keyvalue/{resourceId}/integrations][%d] getListIntegratedAppKeyValueClusterV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetListIntegratedAppKeyValueClusterV2OK) ToJSONString() string {
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

func (o *GetListIntegratedAppKeyValueClusterV2OK) GetPayload() *csmclientmodels.ApimodelListIntegratedAppsKeyValueResponse {
	return o.Payload
}

func (o *GetListIntegratedAppKeyValueClusterV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelListIntegratedAppsKeyValueResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetListIntegratedAppKeyValueClusterV2Unauthorized creates a GetListIntegratedAppKeyValueClusterV2Unauthorized with default headers values
func NewGetListIntegratedAppKeyValueClusterV2Unauthorized() *GetListIntegratedAppKeyValueClusterV2Unauthorized {
	return &GetListIntegratedAppKeyValueClusterV2Unauthorized{}
}

/*GetListIntegratedAppKeyValueClusterV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetListIntegratedAppKeyValueClusterV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListIntegratedAppKeyValueClusterV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/keyvalue/{resourceId}/integrations][%d] getListIntegratedAppKeyValueClusterV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetListIntegratedAppKeyValueClusterV2Unauthorized) ToJSONString() string {
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

func (o *GetListIntegratedAppKeyValueClusterV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListIntegratedAppKeyValueClusterV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListIntegratedAppKeyValueClusterV2Forbidden creates a GetListIntegratedAppKeyValueClusterV2Forbidden with default headers values
func NewGetListIntegratedAppKeyValueClusterV2Forbidden() *GetListIntegratedAppKeyValueClusterV2Forbidden {
	return &GetListIntegratedAppKeyValueClusterV2Forbidden{}
}

/*GetListIntegratedAppKeyValueClusterV2Forbidden handles this case with default header values.

  Forbidden
*/
type GetListIntegratedAppKeyValueClusterV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListIntegratedAppKeyValueClusterV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/keyvalue/{resourceId}/integrations][%d] getListIntegratedAppKeyValueClusterV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetListIntegratedAppKeyValueClusterV2Forbidden) ToJSONString() string {
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

func (o *GetListIntegratedAppKeyValueClusterV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListIntegratedAppKeyValueClusterV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListIntegratedAppKeyValueClusterV2NotFound creates a GetListIntegratedAppKeyValueClusterV2NotFound with default headers values
func NewGetListIntegratedAppKeyValueClusterV2NotFound() *GetListIntegratedAppKeyValueClusterV2NotFound {
	return &GetListIntegratedAppKeyValueClusterV2NotFound{}
}

/*GetListIntegratedAppKeyValueClusterV2NotFound handles this case with default header values.

  Not Found
*/
type GetListIntegratedAppKeyValueClusterV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListIntegratedAppKeyValueClusterV2NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/keyvalue/{resourceId}/integrations][%d] getListIntegratedAppKeyValueClusterV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetListIntegratedAppKeyValueClusterV2NotFound) ToJSONString() string {
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

func (o *GetListIntegratedAppKeyValueClusterV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListIntegratedAppKeyValueClusterV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListIntegratedAppKeyValueClusterV2InternalServerError creates a GetListIntegratedAppKeyValueClusterV2InternalServerError with default headers values
func NewGetListIntegratedAppKeyValueClusterV2InternalServerError() *GetListIntegratedAppKeyValueClusterV2InternalServerError {
	return &GetListIntegratedAppKeyValueClusterV2InternalServerError{}
}

/*GetListIntegratedAppKeyValueClusterV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetListIntegratedAppKeyValueClusterV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetListIntegratedAppKeyValueClusterV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/keyvalue/{resourceId}/integrations][%d] getListIntegratedAppKeyValueClusterV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetListIntegratedAppKeyValueClusterV2InternalServerError) ToJSONString() string {
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

func (o *GetListIntegratedAppKeyValueClusterV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListIntegratedAppKeyValueClusterV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
