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

// GetIntegrationAppKeyValueClusterV2Reader is a Reader for the GetIntegrationAppKeyValueClusterV2 structure.
type GetIntegrationAppKeyValueClusterV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetIntegrationAppKeyValueClusterV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetIntegrationAppKeyValueClusterV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetIntegrationAppKeyValueClusterV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetIntegrationAppKeyValueClusterV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetIntegrationAppKeyValueClusterV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetIntegrationAppKeyValueClusterV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetIntegrationAppKeyValueClusterV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetIntegrationAppKeyValueClusterV2OK creates a GetIntegrationAppKeyValueClusterV2OK with default headers values
func NewGetIntegrationAppKeyValueClusterV2OK() *GetIntegrationAppKeyValueClusterV2OK {
	return &GetIntegrationAppKeyValueClusterV2OK{}
}

/*GetIntegrationAppKeyValueClusterV2OK handles this case with default header values.

  OK
*/
type GetIntegrationAppKeyValueClusterV2OK struct {
	Payload *csmclientmodels.ApimodelGetIntegrationAppKeyValueResponse
}

func (o *GetIntegrationAppKeyValueClusterV2OK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] getIntegrationAppKeyValueClusterV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetIntegrationAppKeyValueClusterV2OK) ToJSONString() string {
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

func (o *GetIntegrationAppKeyValueClusterV2OK) GetPayload() *csmclientmodels.ApimodelGetIntegrationAppKeyValueResponse {
	return o.Payload
}

func (o *GetIntegrationAppKeyValueClusterV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelGetIntegrationAppKeyValueResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetIntegrationAppKeyValueClusterV2BadRequest creates a GetIntegrationAppKeyValueClusterV2BadRequest with default headers values
func NewGetIntegrationAppKeyValueClusterV2BadRequest() *GetIntegrationAppKeyValueClusterV2BadRequest {
	return &GetIntegrationAppKeyValueClusterV2BadRequest{}
}

/*GetIntegrationAppKeyValueClusterV2BadRequest handles this case with default header values.

  Bad Request
*/
type GetIntegrationAppKeyValueClusterV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetIntegrationAppKeyValueClusterV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] getIntegrationAppKeyValueClusterV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetIntegrationAppKeyValueClusterV2BadRequest) ToJSONString() string {
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

func (o *GetIntegrationAppKeyValueClusterV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetIntegrationAppKeyValueClusterV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetIntegrationAppKeyValueClusterV2Unauthorized creates a GetIntegrationAppKeyValueClusterV2Unauthorized with default headers values
func NewGetIntegrationAppKeyValueClusterV2Unauthorized() *GetIntegrationAppKeyValueClusterV2Unauthorized {
	return &GetIntegrationAppKeyValueClusterV2Unauthorized{}
}

/*GetIntegrationAppKeyValueClusterV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetIntegrationAppKeyValueClusterV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetIntegrationAppKeyValueClusterV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] getIntegrationAppKeyValueClusterV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetIntegrationAppKeyValueClusterV2Unauthorized) ToJSONString() string {
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

func (o *GetIntegrationAppKeyValueClusterV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetIntegrationAppKeyValueClusterV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetIntegrationAppKeyValueClusterV2Forbidden creates a GetIntegrationAppKeyValueClusterV2Forbidden with default headers values
func NewGetIntegrationAppKeyValueClusterV2Forbidden() *GetIntegrationAppKeyValueClusterV2Forbidden {
	return &GetIntegrationAppKeyValueClusterV2Forbidden{}
}

/*GetIntegrationAppKeyValueClusterV2Forbidden handles this case with default header values.

  Forbidden
*/
type GetIntegrationAppKeyValueClusterV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetIntegrationAppKeyValueClusterV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] getIntegrationAppKeyValueClusterV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetIntegrationAppKeyValueClusterV2Forbidden) ToJSONString() string {
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

func (o *GetIntegrationAppKeyValueClusterV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetIntegrationAppKeyValueClusterV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetIntegrationAppKeyValueClusterV2NotFound creates a GetIntegrationAppKeyValueClusterV2NotFound with default headers values
func NewGetIntegrationAppKeyValueClusterV2NotFound() *GetIntegrationAppKeyValueClusterV2NotFound {
	return &GetIntegrationAppKeyValueClusterV2NotFound{}
}

/*GetIntegrationAppKeyValueClusterV2NotFound handles this case with default header values.

  Not Found
*/
type GetIntegrationAppKeyValueClusterV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetIntegrationAppKeyValueClusterV2NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] getIntegrationAppKeyValueClusterV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetIntegrationAppKeyValueClusterV2NotFound) ToJSONString() string {
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

func (o *GetIntegrationAppKeyValueClusterV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetIntegrationAppKeyValueClusterV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetIntegrationAppKeyValueClusterV2InternalServerError creates a GetIntegrationAppKeyValueClusterV2InternalServerError with default headers values
func NewGetIntegrationAppKeyValueClusterV2InternalServerError() *GetIntegrationAppKeyValueClusterV2InternalServerError {
	return &GetIntegrationAppKeyValueClusterV2InternalServerError{}
}

/*GetIntegrationAppKeyValueClusterV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetIntegrationAppKeyValueClusterV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetIntegrationAppKeyValueClusterV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] getIntegrationAppKeyValueClusterV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetIntegrationAppKeyValueClusterV2InternalServerError) ToJSONString() string {
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

func (o *GetIntegrationAppKeyValueClusterV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetIntegrationAppKeyValueClusterV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
