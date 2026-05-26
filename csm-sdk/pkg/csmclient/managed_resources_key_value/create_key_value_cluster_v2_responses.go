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

// CreateKeyValueClusterV2Reader is a Reader for the CreateKeyValueClusterV2 structure.
type CreateKeyValueClusterV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateKeyValueClusterV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateKeyValueClusterV2Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateKeyValueClusterV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateKeyValueClusterV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateKeyValueClusterV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateKeyValueClusterV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateKeyValueClusterV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateKeyValueClusterV2Created creates a CreateKeyValueClusterV2Created with default headers values
func NewCreateKeyValueClusterV2Created() *CreateKeyValueClusterV2Created {
	return &CreateKeyValueClusterV2Created{}
}

/*CreateKeyValueClusterV2Created handles this case with default header values.

  Created
*/
type CreateKeyValueClusterV2Created struct {
	Payload *csmclientmodels.ApimodelKeyValueResourceResponse
}

func (o *CreateKeyValueClusterV2Created) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters][%d] createKeyValueClusterV2Created  %+v", 201, o.ToJSONString())
}

func (o *CreateKeyValueClusterV2Created) ToJSONString() string {
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

func (o *CreateKeyValueClusterV2Created) GetPayload() *csmclientmodels.ApimodelKeyValueResourceResponse {
	return o.Payload
}

func (o *CreateKeyValueClusterV2Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelKeyValueResourceResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateKeyValueClusterV2BadRequest creates a CreateKeyValueClusterV2BadRequest with default headers values
func NewCreateKeyValueClusterV2BadRequest() *CreateKeyValueClusterV2BadRequest {
	return &CreateKeyValueClusterV2BadRequest{}
}

/*CreateKeyValueClusterV2BadRequest handles this case with default header values.

  Bad Request
*/
type CreateKeyValueClusterV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateKeyValueClusterV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters][%d] createKeyValueClusterV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateKeyValueClusterV2BadRequest) ToJSONString() string {
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

func (o *CreateKeyValueClusterV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateKeyValueClusterV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateKeyValueClusterV2Unauthorized creates a CreateKeyValueClusterV2Unauthorized with default headers values
func NewCreateKeyValueClusterV2Unauthorized() *CreateKeyValueClusterV2Unauthorized {
	return &CreateKeyValueClusterV2Unauthorized{}
}

/*CreateKeyValueClusterV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type CreateKeyValueClusterV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateKeyValueClusterV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters][%d] createKeyValueClusterV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateKeyValueClusterV2Unauthorized) ToJSONString() string {
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

func (o *CreateKeyValueClusterV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateKeyValueClusterV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateKeyValueClusterV2Forbidden creates a CreateKeyValueClusterV2Forbidden with default headers values
func NewCreateKeyValueClusterV2Forbidden() *CreateKeyValueClusterV2Forbidden {
	return &CreateKeyValueClusterV2Forbidden{}
}

/*CreateKeyValueClusterV2Forbidden handles this case with default header values.

  Forbidden
*/
type CreateKeyValueClusterV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateKeyValueClusterV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters][%d] createKeyValueClusterV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateKeyValueClusterV2Forbidden) ToJSONString() string {
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

func (o *CreateKeyValueClusterV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateKeyValueClusterV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateKeyValueClusterV2Conflict creates a CreateKeyValueClusterV2Conflict with default headers values
func NewCreateKeyValueClusterV2Conflict() *CreateKeyValueClusterV2Conflict {
	return &CreateKeyValueClusterV2Conflict{}
}

/*CreateKeyValueClusterV2Conflict handles this case with default header values.

  Conflict
*/
type CreateKeyValueClusterV2Conflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateKeyValueClusterV2Conflict) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters][%d] createKeyValueClusterV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateKeyValueClusterV2Conflict) ToJSONString() string {
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

func (o *CreateKeyValueClusterV2Conflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateKeyValueClusterV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateKeyValueClusterV2InternalServerError creates a CreateKeyValueClusterV2InternalServerError with default headers values
func NewCreateKeyValueClusterV2InternalServerError() *CreateKeyValueClusterV2InternalServerError {
	return &CreateKeyValueClusterV2InternalServerError{}
}

/*CreateKeyValueClusterV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateKeyValueClusterV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateKeyValueClusterV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters][%d] createKeyValueClusterV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateKeyValueClusterV2InternalServerError) ToJSONString() string {
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

func (o *CreateKeyValueClusterV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateKeyValueClusterV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
