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

// CreateNoSQLDatabaseV2Reader is a Reader for the CreateNoSQLDatabaseV2 structure.
type CreateNoSQLDatabaseV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateNoSQLDatabaseV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreateNoSQLDatabaseV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateNoSQLDatabaseV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateNoSQLDatabaseV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateNoSQLDatabaseV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateNoSQLDatabaseV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateNoSQLDatabaseV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateNoSQLDatabaseV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewCreateNoSQLDatabaseV2ServiceUnavailable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateNoSQLDatabaseV2OK creates a CreateNoSQLDatabaseV2OK with default headers values
func NewCreateNoSQLDatabaseV2OK() *CreateNoSQLDatabaseV2OK {
	return &CreateNoSQLDatabaseV2OK{}
}

/*CreateNoSQLDatabaseV2OK handles this case with default header values.

  OK
*/
type CreateNoSQLDatabaseV2OK struct {
	Payload *csmclientmodels.ApimodelNoSQLDatabaseResponse
}

func (o *CreateNoSQLDatabaseV2OK) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] createNoSqlDatabaseV2OK  %+v", 200, o.ToJSONString())
}

func (o *CreateNoSQLDatabaseV2OK) ToJSONString() string {
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

func (o *CreateNoSQLDatabaseV2OK) GetPayload() *csmclientmodels.ApimodelNoSQLDatabaseResponse {
	return o.Payload
}

func (o *CreateNoSQLDatabaseV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelNoSQLDatabaseResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateNoSQLDatabaseV2BadRequest creates a CreateNoSQLDatabaseV2BadRequest with default headers values
func NewCreateNoSQLDatabaseV2BadRequest() *CreateNoSQLDatabaseV2BadRequest {
	return &CreateNoSQLDatabaseV2BadRequest{}
}

/*CreateNoSQLDatabaseV2BadRequest handles this case with default header values.

  Bad Request
*/
type CreateNoSQLDatabaseV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLDatabaseV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] createNoSqlDatabaseV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateNoSQLDatabaseV2BadRequest) ToJSONString() string {
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

func (o *CreateNoSQLDatabaseV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLDatabaseV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNoSQLDatabaseV2Unauthorized creates a CreateNoSQLDatabaseV2Unauthorized with default headers values
func NewCreateNoSQLDatabaseV2Unauthorized() *CreateNoSQLDatabaseV2Unauthorized {
	return &CreateNoSQLDatabaseV2Unauthorized{}
}

/*CreateNoSQLDatabaseV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type CreateNoSQLDatabaseV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLDatabaseV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] createNoSqlDatabaseV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateNoSQLDatabaseV2Unauthorized) ToJSONString() string {
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

func (o *CreateNoSQLDatabaseV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLDatabaseV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNoSQLDatabaseV2Forbidden creates a CreateNoSQLDatabaseV2Forbidden with default headers values
func NewCreateNoSQLDatabaseV2Forbidden() *CreateNoSQLDatabaseV2Forbidden {
	return &CreateNoSQLDatabaseV2Forbidden{}
}

/*CreateNoSQLDatabaseV2Forbidden handles this case with default header values.

  Forbidden
*/
type CreateNoSQLDatabaseV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLDatabaseV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] createNoSqlDatabaseV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateNoSQLDatabaseV2Forbidden) ToJSONString() string {
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

func (o *CreateNoSQLDatabaseV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLDatabaseV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNoSQLDatabaseV2NotFound creates a CreateNoSQLDatabaseV2NotFound with default headers values
func NewCreateNoSQLDatabaseV2NotFound() *CreateNoSQLDatabaseV2NotFound {
	return &CreateNoSQLDatabaseV2NotFound{}
}

/*CreateNoSQLDatabaseV2NotFound handles this case with default header values.

  Not Found
*/
type CreateNoSQLDatabaseV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLDatabaseV2NotFound) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] createNoSqlDatabaseV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateNoSQLDatabaseV2NotFound) ToJSONString() string {
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

func (o *CreateNoSQLDatabaseV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLDatabaseV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNoSQLDatabaseV2Conflict creates a CreateNoSQLDatabaseV2Conflict with default headers values
func NewCreateNoSQLDatabaseV2Conflict() *CreateNoSQLDatabaseV2Conflict {
	return &CreateNoSQLDatabaseV2Conflict{}
}

/*CreateNoSQLDatabaseV2Conflict handles this case with default header values.

  Conflict
*/
type CreateNoSQLDatabaseV2Conflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLDatabaseV2Conflict) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] createNoSqlDatabaseV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateNoSQLDatabaseV2Conflict) ToJSONString() string {
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

func (o *CreateNoSQLDatabaseV2Conflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLDatabaseV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNoSQLDatabaseV2InternalServerError creates a CreateNoSQLDatabaseV2InternalServerError with default headers values
func NewCreateNoSQLDatabaseV2InternalServerError() *CreateNoSQLDatabaseV2InternalServerError {
	return &CreateNoSQLDatabaseV2InternalServerError{}
}

/*CreateNoSQLDatabaseV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateNoSQLDatabaseV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLDatabaseV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] createNoSqlDatabaseV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateNoSQLDatabaseV2InternalServerError) ToJSONString() string {
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

func (o *CreateNoSQLDatabaseV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLDatabaseV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNoSQLDatabaseV2ServiceUnavailable creates a CreateNoSQLDatabaseV2ServiceUnavailable with default headers values
func NewCreateNoSQLDatabaseV2ServiceUnavailable() *CreateNoSQLDatabaseV2ServiceUnavailable {
	return &CreateNoSQLDatabaseV2ServiceUnavailable{}
}

/*CreateNoSQLDatabaseV2ServiceUnavailable handles this case with default header values.

  Service Unavailable
*/
type CreateNoSQLDatabaseV2ServiceUnavailable struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLDatabaseV2ServiceUnavailable) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] createNoSqlDatabaseV2ServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *CreateNoSQLDatabaseV2ServiceUnavailable) ToJSONString() string {
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

func (o *CreateNoSQLDatabaseV2ServiceUnavailable) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLDatabaseV2ServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
