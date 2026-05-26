// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package managed_resources_sql

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

// CreateSQLDatabaseCredentialV2Reader is a Reader for the CreateSQLDatabaseCredentialV2 structure.
type CreateSQLDatabaseCredentialV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateSQLDatabaseCredentialV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreateSQLDatabaseCredentialV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateSQLDatabaseCredentialV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateSQLDatabaseCredentialV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateSQLDatabaseCredentialV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateSQLDatabaseCredentialV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateSQLDatabaseCredentialV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateSQLDatabaseCredentialV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewCreateSQLDatabaseCredentialV2ServiceUnavailable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/credentials returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateSQLDatabaseCredentialV2OK creates a CreateSQLDatabaseCredentialV2OK with default headers values
func NewCreateSQLDatabaseCredentialV2OK() *CreateSQLDatabaseCredentialV2OK {
	return &CreateSQLDatabaseCredentialV2OK{}
}

/*CreateSQLDatabaseCredentialV2OK handles this case with default header values.

  OK
*/
type CreateSQLDatabaseCredentialV2OK struct {
	Payload *csmclientmodels.ApimodelSQLDatabaseCredentialResponse
}

func (o *CreateSQLDatabaseCredentialV2OK) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/credentials][%d] createSqlDatabaseCredentialV2OK  %+v", 200, o.ToJSONString())
}

func (o *CreateSQLDatabaseCredentialV2OK) ToJSONString() string {
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

func (o *CreateSQLDatabaseCredentialV2OK) GetPayload() *csmclientmodels.ApimodelSQLDatabaseCredentialResponse {
	return o.Payload
}

func (o *CreateSQLDatabaseCredentialV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelSQLDatabaseCredentialResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateSQLDatabaseCredentialV2BadRequest creates a CreateSQLDatabaseCredentialV2BadRequest with default headers values
func NewCreateSQLDatabaseCredentialV2BadRequest() *CreateSQLDatabaseCredentialV2BadRequest {
	return &CreateSQLDatabaseCredentialV2BadRequest{}
}

/*CreateSQLDatabaseCredentialV2BadRequest handles this case with default header values.

  Bad Request
*/
type CreateSQLDatabaseCredentialV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateSQLDatabaseCredentialV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/credentials][%d] createSqlDatabaseCredentialV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateSQLDatabaseCredentialV2BadRequest) ToJSONString() string {
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

func (o *CreateSQLDatabaseCredentialV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateSQLDatabaseCredentialV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateSQLDatabaseCredentialV2Unauthorized creates a CreateSQLDatabaseCredentialV2Unauthorized with default headers values
func NewCreateSQLDatabaseCredentialV2Unauthorized() *CreateSQLDatabaseCredentialV2Unauthorized {
	return &CreateSQLDatabaseCredentialV2Unauthorized{}
}

/*CreateSQLDatabaseCredentialV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type CreateSQLDatabaseCredentialV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateSQLDatabaseCredentialV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/credentials][%d] createSqlDatabaseCredentialV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateSQLDatabaseCredentialV2Unauthorized) ToJSONString() string {
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

func (o *CreateSQLDatabaseCredentialV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateSQLDatabaseCredentialV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateSQLDatabaseCredentialV2Forbidden creates a CreateSQLDatabaseCredentialV2Forbidden with default headers values
func NewCreateSQLDatabaseCredentialV2Forbidden() *CreateSQLDatabaseCredentialV2Forbidden {
	return &CreateSQLDatabaseCredentialV2Forbidden{}
}

/*CreateSQLDatabaseCredentialV2Forbidden handles this case with default header values.

  Forbidden
*/
type CreateSQLDatabaseCredentialV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateSQLDatabaseCredentialV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/credentials][%d] createSqlDatabaseCredentialV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateSQLDatabaseCredentialV2Forbidden) ToJSONString() string {
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

func (o *CreateSQLDatabaseCredentialV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateSQLDatabaseCredentialV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateSQLDatabaseCredentialV2NotFound creates a CreateSQLDatabaseCredentialV2NotFound with default headers values
func NewCreateSQLDatabaseCredentialV2NotFound() *CreateSQLDatabaseCredentialV2NotFound {
	return &CreateSQLDatabaseCredentialV2NotFound{}
}

/*CreateSQLDatabaseCredentialV2NotFound handles this case with default header values.

  Not Found
*/
type CreateSQLDatabaseCredentialV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateSQLDatabaseCredentialV2NotFound) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/credentials][%d] createSqlDatabaseCredentialV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateSQLDatabaseCredentialV2NotFound) ToJSONString() string {
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

func (o *CreateSQLDatabaseCredentialV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateSQLDatabaseCredentialV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateSQLDatabaseCredentialV2Conflict creates a CreateSQLDatabaseCredentialV2Conflict with default headers values
func NewCreateSQLDatabaseCredentialV2Conflict() *CreateSQLDatabaseCredentialV2Conflict {
	return &CreateSQLDatabaseCredentialV2Conflict{}
}

/*CreateSQLDatabaseCredentialV2Conflict handles this case with default header values.

  Conflict
*/
type CreateSQLDatabaseCredentialV2Conflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateSQLDatabaseCredentialV2Conflict) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/credentials][%d] createSqlDatabaseCredentialV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateSQLDatabaseCredentialV2Conflict) ToJSONString() string {
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

func (o *CreateSQLDatabaseCredentialV2Conflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateSQLDatabaseCredentialV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateSQLDatabaseCredentialV2InternalServerError creates a CreateSQLDatabaseCredentialV2InternalServerError with default headers values
func NewCreateSQLDatabaseCredentialV2InternalServerError() *CreateSQLDatabaseCredentialV2InternalServerError {
	return &CreateSQLDatabaseCredentialV2InternalServerError{}
}

/*CreateSQLDatabaseCredentialV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateSQLDatabaseCredentialV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateSQLDatabaseCredentialV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/credentials][%d] createSqlDatabaseCredentialV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateSQLDatabaseCredentialV2InternalServerError) ToJSONString() string {
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

func (o *CreateSQLDatabaseCredentialV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateSQLDatabaseCredentialV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateSQLDatabaseCredentialV2ServiceUnavailable creates a CreateSQLDatabaseCredentialV2ServiceUnavailable with default headers values
func NewCreateSQLDatabaseCredentialV2ServiceUnavailable() *CreateSQLDatabaseCredentialV2ServiceUnavailable {
	return &CreateSQLDatabaseCredentialV2ServiceUnavailable{}
}

/*CreateSQLDatabaseCredentialV2ServiceUnavailable handles this case with default header values.

  Service Unavailable
*/
type CreateSQLDatabaseCredentialV2ServiceUnavailable struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateSQLDatabaseCredentialV2ServiceUnavailable) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/credentials][%d] createSqlDatabaseCredentialV2ServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *CreateSQLDatabaseCredentialV2ServiceUnavailable) ToJSONString() string {
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

func (o *CreateSQLDatabaseCredentialV2ServiceUnavailable) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateSQLDatabaseCredentialV2ServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
