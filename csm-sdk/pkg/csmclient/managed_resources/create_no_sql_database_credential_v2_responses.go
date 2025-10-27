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

// CreateNoSQLDatabaseCredentialV2Reader is a Reader for the CreateNoSQLDatabaseCredentialV2 structure.
type CreateNoSQLDatabaseCredentialV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateNoSQLDatabaseCredentialV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreateNoSQLDatabaseCredentialV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateNoSQLDatabaseCredentialV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateNoSQLDatabaseCredentialV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateNoSQLDatabaseCredentialV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateNoSQLDatabaseCredentialV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateNoSQLDatabaseCredentialV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateNoSQLDatabaseCredentialV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewCreateNoSQLDatabaseCredentialV2ServiceUnavailable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/crendentials returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateNoSQLDatabaseCredentialV2OK creates a CreateNoSQLDatabaseCredentialV2OK with default headers values
func NewCreateNoSQLDatabaseCredentialV2OK() *CreateNoSQLDatabaseCredentialV2OK {
	return &CreateNoSQLDatabaseCredentialV2OK{}
}

/*CreateNoSQLDatabaseCredentialV2OK handles this case with default header values.

  OK
*/
type CreateNoSQLDatabaseCredentialV2OK struct {
	Payload *csmclientmodels.ApimodelNoSQLDatabaseCredentialResponse
}

func (o *CreateNoSQLDatabaseCredentialV2OK) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/crendentials][%d] createNoSqlDatabaseCredentialV2OK  %+v", 200, o.ToJSONString())
}

func (o *CreateNoSQLDatabaseCredentialV2OK) ToJSONString() string {
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

func (o *CreateNoSQLDatabaseCredentialV2OK) GetPayload() *csmclientmodels.ApimodelNoSQLDatabaseCredentialResponse {
	return o.Payload
}

func (o *CreateNoSQLDatabaseCredentialV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelNoSQLDatabaseCredentialResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateNoSQLDatabaseCredentialV2BadRequest creates a CreateNoSQLDatabaseCredentialV2BadRequest with default headers values
func NewCreateNoSQLDatabaseCredentialV2BadRequest() *CreateNoSQLDatabaseCredentialV2BadRequest {
	return &CreateNoSQLDatabaseCredentialV2BadRequest{}
}

/*CreateNoSQLDatabaseCredentialV2BadRequest handles this case with default header values.

  Bad Request
*/
type CreateNoSQLDatabaseCredentialV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLDatabaseCredentialV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/crendentials][%d] createNoSqlDatabaseCredentialV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateNoSQLDatabaseCredentialV2BadRequest) ToJSONString() string {
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

func (o *CreateNoSQLDatabaseCredentialV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLDatabaseCredentialV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNoSQLDatabaseCredentialV2Unauthorized creates a CreateNoSQLDatabaseCredentialV2Unauthorized with default headers values
func NewCreateNoSQLDatabaseCredentialV2Unauthorized() *CreateNoSQLDatabaseCredentialV2Unauthorized {
	return &CreateNoSQLDatabaseCredentialV2Unauthorized{}
}

/*CreateNoSQLDatabaseCredentialV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type CreateNoSQLDatabaseCredentialV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLDatabaseCredentialV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/crendentials][%d] createNoSqlDatabaseCredentialV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateNoSQLDatabaseCredentialV2Unauthorized) ToJSONString() string {
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

func (o *CreateNoSQLDatabaseCredentialV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLDatabaseCredentialV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNoSQLDatabaseCredentialV2Forbidden creates a CreateNoSQLDatabaseCredentialV2Forbidden with default headers values
func NewCreateNoSQLDatabaseCredentialV2Forbidden() *CreateNoSQLDatabaseCredentialV2Forbidden {
	return &CreateNoSQLDatabaseCredentialV2Forbidden{}
}

/*CreateNoSQLDatabaseCredentialV2Forbidden handles this case with default header values.

  Forbidden
*/
type CreateNoSQLDatabaseCredentialV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLDatabaseCredentialV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/crendentials][%d] createNoSqlDatabaseCredentialV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateNoSQLDatabaseCredentialV2Forbidden) ToJSONString() string {
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

func (o *CreateNoSQLDatabaseCredentialV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLDatabaseCredentialV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNoSQLDatabaseCredentialV2NotFound creates a CreateNoSQLDatabaseCredentialV2NotFound with default headers values
func NewCreateNoSQLDatabaseCredentialV2NotFound() *CreateNoSQLDatabaseCredentialV2NotFound {
	return &CreateNoSQLDatabaseCredentialV2NotFound{}
}

/*CreateNoSQLDatabaseCredentialV2NotFound handles this case with default header values.

  Not Found
*/
type CreateNoSQLDatabaseCredentialV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLDatabaseCredentialV2NotFound) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/crendentials][%d] createNoSqlDatabaseCredentialV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateNoSQLDatabaseCredentialV2NotFound) ToJSONString() string {
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

func (o *CreateNoSQLDatabaseCredentialV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLDatabaseCredentialV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNoSQLDatabaseCredentialV2Conflict creates a CreateNoSQLDatabaseCredentialV2Conflict with default headers values
func NewCreateNoSQLDatabaseCredentialV2Conflict() *CreateNoSQLDatabaseCredentialV2Conflict {
	return &CreateNoSQLDatabaseCredentialV2Conflict{}
}

/*CreateNoSQLDatabaseCredentialV2Conflict handles this case with default header values.

  Conflict
*/
type CreateNoSQLDatabaseCredentialV2Conflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLDatabaseCredentialV2Conflict) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/crendentials][%d] createNoSqlDatabaseCredentialV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateNoSQLDatabaseCredentialV2Conflict) ToJSONString() string {
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

func (o *CreateNoSQLDatabaseCredentialV2Conflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLDatabaseCredentialV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNoSQLDatabaseCredentialV2InternalServerError creates a CreateNoSQLDatabaseCredentialV2InternalServerError with default headers values
func NewCreateNoSQLDatabaseCredentialV2InternalServerError() *CreateNoSQLDatabaseCredentialV2InternalServerError {
	return &CreateNoSQLDatabaseCredentialV2InternalServerError{}
}

/*CreateNoSQLDatabaseCredentialV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateNoSQLDatabaseCredentialV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLDatabaseCredentialV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/crendentials][%d] createNoSqlDatabaseCredentialV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateNoSQLDatabaseCredentialV2InternalServerError) ToJSONString() string {
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

func (o *CreateNoSQLDatabaseCredentialV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLDatabaseCredentialV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNoSQLDatabaseCredentialV2ServiceUnavailable creates a CreateNoSQLDatabaseCredentialV2ServiceUnavailable with default headers values
func NewCreateNoSQLDatabaseCredentialV2ServiceUnavailable() *CreateNoSQLDatabaseCredentialV2ServiceUnavailable {
	return &CreateNoSQLDatabaseCredentialV2ServiceUnavailable{}
}

/*CreateNoSQLDatabaseCredentialV2ServiceUnavailable handles this case with default header values.

  Service Unavailable
*/
type CreateNoSQLDatabaseCredentialV2ServiceUnavailable struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNoSQLDatabaseCredentialV2ServiceUnavailable) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/crendentials][%d] createNoSqlDatabaseCredentialV2ServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *CreateNoSQLDatabaseCredentialV2ServiceUnavailable) ToJSONString() string {
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

func (o *CreateNoSQLDatabaseCredentialV2ServiceUnavailable) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNoSQLDatabaseCredentialV2ServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
