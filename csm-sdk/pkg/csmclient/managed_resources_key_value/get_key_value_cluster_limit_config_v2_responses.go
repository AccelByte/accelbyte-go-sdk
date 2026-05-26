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

// GetKeyValueClusterLimitConfigV2Reader is a Reader for the GetKeyValueClusterLimitConfigV2 structure.
type GetKeyValueClusterLimitConfigV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetKeyValueClusterLimitConfigV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetKeyValueClusterLimitConfigV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetKeyValueClusterLimitConfigV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetKeyValueClusterLimitConfigV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetKeyValueClusterLimitConfigV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetKeyValueClusterLimitConfigV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/limitconfig returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetKeyValueClusterLimitConfigV2OK creates a GetKeyValueClusterLimitConfigV2OK with default headers values
func NewGetKeyValueClusterLimitConfigV2OK() *GetKeyValueClusterLimitConfigV2OK {
	return &GetKeyValueClusterLimitConfigV2OK{}
}

/*GetKeyValueClusterLimitConfigV2OK handles this case with default header values.

  OK
*/
type GetKeyValueClusterLimitConfigV2OK struct {
	Payload *csmclientmodels.DomainKeyValueClusterConfig
}

func (o *GetKeyValueClusterLimitConfigV2OK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/limitconfig][%d] getKeyValueClusterLimitConfigV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetKeyValueClusterLimitConfigV2OK) ToJSONString() string {
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

func (o *GetKeyValueClusterLimitConfigV2OK) GetPayload() *csmclientmodels.DomainKeyValueClusterConfig {
	return o.Payload
}

func (o *GetKeyValueClusterLimitConfigV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.DomainKeyValueClusterConfig)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetKeyValueClusterLimitConfigV2BadRequest creates a GetKeyValueClusterLimitConfigV2BadRequest with default headers values
func NewGetKeyValueClusterLimitConfigV2BadRequest() *GetKeyValueClusterLimitConfigV2BadRequest {
	return &GetKeyValueClusterLimitConfigV2BadRequest{}
}

/*GetKeyValueClusterLimitConfigV2BadRequest handles this case with default header values.

  Bad Request
*/
type GetKeyValueClusterLimitConfigV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetKeyValueClusterLimitConfigV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/limitconfig][%d] getKeyValueClusterLimitConfigV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetKeyValueClusterLimitConfigV2BadRequest) ToJSONString() string {
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

func (o *GetKeyValueClusterLimitConfigV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetKeyValueClusterLimitConfigV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetKeyValueClusterLimitConfigV2Unauthorized creates a GetKeyValueClusterLimitConfigV2Unauthorized with default headers values
func NewGetKeyValueClusterLimitConfigV2Unauthorized() *GetKeyValueClusterLimitConfigV2Unauthorized {
	return &GetKeyValueClusterLimitConfigV2Unauthorized{}
}

/*GetKeyValueClusterLimitConfigV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetKeyValueClusterLimitConfigV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetKeyValueClusterLimitConfigV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/limitconfig][%d] getKeyValueClusterLimitConfigV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetKeyValueClusterLimitConfigV2Unauthorized) ToJSONString() string {
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

func (o *GetKeyValueClusterLimitConfigV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetKeyValueClusterLimitConfigV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetKeyValueClusterLimitConfigV2Forbidden creates a GetKeyValueClusterLimitConfigV2Forbidden with default headers values
func NewGetKeyValueClusterLimitConfigV2Forbidden() *GetKeyValueClusterLimitConfigV2Forbidden {
	return &GetKeyValueClusterLimitConfigV2Forbidden{}
}

/*GetKeyValueClusterLimitConfigV2Forbidden handles this case with default header values.

  Forbidden
*/
type GetKeyValueClusterLimitConfigV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetKeyValueClusterLimitConfigV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/limitconfig][%d] getKeyValueClusterLimitConfigV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetKeyValueClusterLimitConfigV2Forbidden) ToJSONString() string {
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

func (o *GetKeyValueClusterLimitConfigV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetKeyValueClusterLimitConfigV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetKeyValueClusterLimitConfigV2InternalServerError creates a GetKeyValueClusterLimitConfigV2InternalServerError with default headers values
func NewGetKeyValueClusterLimitConfigV2InternalServerError() *GetKeyValueClusterLimitConfigV2InternalServerError {
	return &GetKeyValueClusterLimitConfigV2InternalServerError{}
}

/*GetKeyValueClusterLimitConfigV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetKeyValueClusterLimitConfigV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetKeyValueClusterLimitConfigV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/limitconfig][%d] getKeyValueClusterLimitConfigV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetKeyValueClusterLimitConfigV2InternalServerError) ToJSONString() string {
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

func (o *GetKeyValueClusterLimitConfigV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetKeyValueClusterLimitConfigV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
