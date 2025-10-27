// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package managed_resources

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

// CreateNoSQLClusterV2Reader is a Reader for the CreateNoSQLClusterV2 structure.
type CreateNoSQLClusterV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateNoSQLClusterV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreateNoSQLClusterV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateNoSQLClusterV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateNoSQLClusterV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateNoSQLClusterV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateNoSQLClusterV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateNoSQLClusterV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/nosql/clusters returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateNoSQLClusterV2OK creates a CreateNoSQLClusterV2OK with default headers values
func NewCreateNoSQLClusterV2OK() *CreateNoSQLClusterV2OK {
	return &CreateNoSQLClusterV2OK{}
}

/*CreateNoSQLClusterV2OK handles this case with default header values.

  OK
*/
type CreateNoSQLClusterV2OK struct {
	Payload *csmclientmodels.ApimodelNoSQLResourceResponse
}

func (o *CreateNoSQLClusterV2OK) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] createNoSqlClusterV2OK  %+v", 200, o.ToJSONString())
}

func (o *CreateNoSQLClusterV2OK) ToJSONString() string {
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

func (o *CreateNoSQLClusterV2OK) GetPayload() *csmclientmodels.ApimodelNoSQLResourceResponse {
	return o.Payload
}

func (o *CreateNoSQLClusterV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelNoSQLResourceResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateNoSQLClusterV2BadRequest creates a CreateNoSQLClusterV2BadRequest with default headers values
func NewCreateNoSQLClusterV2BadRequest() *CreateNoSQLClusterV2BadRequest {
	return &CreateNoSQLClusterV2BadRequest{}
}

/*CreateNoSQLClusterV2BadRequest handles this case with default header values.

  Bad Request
*/
type CreateNoSQLClusterV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLClusterV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] createNoSqlClusterV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateNoSQLClusterV2BadRequest) ToJSONString() string {
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

func (o *CreateNoSQLClusterV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLClusterV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNoSQLClusterV2Unauthorized creates a CreateNoSQLClusterV2Unauthorized with default headers values
func NewCreateNoSQLClusterV2Unauthorized() *CreateNoSQLClusterV2Unauthorized {
	return &CreateNoSQLClusterV2Unauthorized{}
}

/*CreateNoSQLClusterV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type CreateNoSQLClusterV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLClusterV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] createNoSqlClusterV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateNoSQLClusterV2Unauthorized) ToJSONString() string {
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

func (o *CreateNoSQLClusterV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLClusterV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNoSQLClusterV2Forbidden creates a CreateNoSQLClusterV2Forbidden with default headers values
func NewCreateNoSQLClusterV2Forbidden() *CreateNoSQLClusterV2Forbidden {
	return &CreateNoSQLClusterV2Forbidden{}
}

/*CreateNoSQLClusterV2Forbidden handles this case with default header values.

  Forbidden
*/
type CreateNoSQLClusterV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLClusterV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] createNoSqlClusterV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateNoSQLClusterV2Forbidden) ToJSONString() string {
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

func (o *CreateNoSQLClusterV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLClusterV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNoSQLClusterV2Conflict creates a CreateNoSQLClusterV2Conflict with default headers values
func NewCreateNoSQLClusterV2Conflict() *CreateNoSQLClusterV2Conflict {
	return &CreateNoSQLClusterV2Conflict{}
}

/*CreateNoSQLClusterV2Conflict handles this case with default header values.

  Conflict
*/
type CreateNoSQLClusterV2Conflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLClusterV2Conflict) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] createNoSqlClusterV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateNoSQLClusterV2Conflict) ToJSONString() string {
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

func (o *CreateNoSQLClusterV2Conflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLClusterV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNoSQLClusterV2InternalServerError creates a CreateNoSQLClusterV2InternalServerError with default headers values
func NewCreateNoSQLClusterV2InternalServerError() *CreateNoSQLClusterV2InternalServerError {
	return &CreateNoSQLClusterV2InternalServerError{}
}

/*CreateNoSQLClusterV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateNoSQLClusterV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLClusterV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/nosql/clusters][%d] createNoSqlClusterV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateNoSQLClusterV2InternalServerError) ToJSONString() string {
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

func (o *CreateNoSQLClusterV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLClusterV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
