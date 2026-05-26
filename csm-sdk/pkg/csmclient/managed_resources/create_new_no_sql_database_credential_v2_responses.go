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

// CreateNewNoSQLDatabaseCredentialV2Reader is a Reader for the CreateNewNoSQLDatabaseCredentialV2 structure.
type CreateNewNoSQLDatabaseCredentialV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateNewNoSQLDatabaseCredentialV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreateNewNoSQLDatabaseCredentialV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateNewNoSQLDatabaseCredentialV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateNewNoSQLDatabaseCredentialV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateNewNoSQLDatabaseCredentialV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateNewNoSQLDatabaseCredentialV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateNewNoSQLDatabaseCredentialV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateNewNoSQLDatabaseCredentialV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewCreateNewNoSQLDatabaseCredentialV2ServiceUnavailable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/credentials returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateNewNoSQLDatabaseCredentialV2OK creates a CreateNewNoSQLDatabaseCredentialV2OK with default headers values
func NewCreateNewNoSQLDatabaseCredentialV2OK() *CreateNewNoSQLDatabaseCredentialV2OK {
	return &CreateNewNoSQLDatabaseCredentialV2OK{}
}

/*CreateNewNoSQLDatabaseCredentialV2OK handles this case with default header values.

  OK
*/
type CreateNewNoSQLDatabaseCredentialV2OK struct {
	Payload *csmclientmodels.ApimodelNoSQLDatabaseCredentialResponse
}

func (o *CreateNewNoSQLDatabaseCredentialV2OK) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/credentials][%d] createNewNoSqlDatabaseCredentialV2OK  %+v", 200, o.ToJSONString())
}

func (o *CreateNewNoSQLDatabaseCredentialV2OK) ToJSONString() string {
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

func (o *CreateNewNoSQLDatabaseCredentialV2OK) GetPayload() *csmclientmodels.ApimodelNoSQLDatabaseCredentialResponse {
	return o.Payload
}

func (o *CreateNewNoSQLDatabaseCredentialV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNewNoSQLDatabaseCredentialV2BadRequest creates a CreateNewNoSQLDatabaseCredentialV2BadRequest with default headers values
func NewCreateNewNoSQLDatabaseCredentialV2BadRequest() *CreateNewNoSQLDatabaseCredentialV2BadRequest {
	return &CreateNewNoSQLDatabaseCredentialV2BadRequest{}
}

/*CreateNewNoSQLDatabaseCredentialV2BadRequest handles this case with default header values.

  Bad Request
*/
type CreateNewNoSQLDatabaseCredentialV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNewNoSQLDatabaseCredentialV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/credentials][%d] createNewNoSqlDatabaseCredentialV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateNewNoSQLDatabaseCredentialV2BadRequest) ToJSONString() string {
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

func (o *CreateNewNoSQLDatabaseCredentialV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNewNoSQLDatabaseCredentialV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNewNoSQLDatabaseCredentialV2Unauthorized creates a CreateNewNoSQLDatabaseCredentialV2Unauthorized with default headers values
func NewCreateNewNoSQLDatabaseCredentialV2Unauthorized() *CreateNewNoSQLDatabaseCredentialV2Unauthorized {
	return &CreateNewNoSQLDatabaseCredentialV2Unauthorized{}
}

/*CreateNewNoSQLDatabaseCredentialV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type CreateNewNoSQLDatabaseCredentialV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNewNoSQLDatabaseCredentialV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/credentials][%d] createNewNoSqlDatabaseCredentialV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateNewNoSQLDatabaseCredentialV2Unauthorized) ToJSONString() string {
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

func (o *CreateNewNoSQLDatabaseCredentialV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNewNoSQLDatabaseCredentialV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNewNoSQLDatabaseCredentialV2Forbidden creates a CreateNewNoSQLDatabaseCredentialV2Forbidden with default headers values
func NewCreateNewNoSQLDatabaseCredentialV2Forbidden() *CreateNewNoSQLDatabaseCredentialV2Forbidden {
	return &CreateNewNoSQLDatabaseCredentialV2Forbidden{}
}

/*CreateNewNoSQLDatabaseCredentialV2Forbidden handles this case with default header values.

  Forbidden
*/
type CreateNewNoSQLDatabaseCredentialV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNewNoSQLDatabaseCredentialV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/credentials][%d] createNewNoSqlDatabaseCredentialV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateNewNoSQLDatabaseCredentialV2Forbidden) ToJSONString() string {
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

func (o *CreateNewNoSQLDatabaseCredentialV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNewNoSQLDatabaseCredentialV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNewNoSQLDatabaseCredentialV2NotFound creates a CreateNewNoSQLDatabaseCredentialV2NotFound with default headers values
func NewCreateNewNoSQLDatabaseCredentialV2NotFound() *CreateNewNoSQLDatabaseCredentialV2NotFound {
	return &CreateNewNoSQLDatabaseCredentialV2NotFound{}
}

/*CreateNewNoSQLDatabaseCredentialV2NotFound handles this case with default header values.

  Not Found
*/
type CreateNewNoSQLDatabaseCredentialV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNewNoSQLDatabaseCredentialV2NotFound) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/credentials][%d] createNewNoSqlDatabaseCredentialV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateNewNoSQLDatabaseCredentialV2NotFound) ToJSONString() string {
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

func (o *CreateNewNoSQLDatabaseCredentialV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNewNoSQLDatabaseCredentialV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNewNoSQLDatabaseCredentialV2Conflict creates a CreateNewNoSQLDatabaseCredentialV2Conflict with default headers values
func NewCreateNewNoSQLDatabaseCredentialV2Conflict() *CreateNewNoSQLDatabaseCredentialV2Conflict {
	return &CreateNewNoSQLDatabaseCredentialV2Conflict{}
}

/*CreateNewNoSQLDatabaseCredentialV2Conflict handles this case with default header values.

  Conflict
*/
type CreateNewNoSQLDatabaseCredentialV2Conflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNewNoSQLDatabaseCredentialV2Conflict) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/credentials][%d] createNewNoSqlDatabaseCredentialV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateNewNoSQLDatabaseCredentialV2Conflict) ToJSONString() string {
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

func (o *CreateNewNoSQLDatabaseCredentialV2Conflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNewNoSQLDatabaseCredentialV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNewNoSQLDatabaseCredentialV2InternalServerError creates a CreateNewNoSQLDatabaseCredentialV2InternalServerError with default headers values
func NewCreateNewNoSQLDatabaseCredentialV2InternalServerError() *CreateNewNoSQLDatabaseCredentialV2InternalServerError {
	return &CreateNewNoSQLDatabaseCredentialV2InternalServerError{}
}

/*CreateNewNoSQLDatabaseCredentialV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateNewNoSQLDatabaseCredentialV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNewNoSQLDatabaseCredentialV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/credentials][%d] createNewNoSqlDatabaseCredentialV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateNewNoSQLDatabaseCredentialV2InternalServerError) ToJSONString() string {
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

func (o *CreateNewNoSQLDatabaseCredentialV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNewNoSQLDatabaseCredentialV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNewNoSQLDatabaseCredentialV2ServiceUnavailable creates a CreateNewNoSQLDatabaseCredentialV2ServiceUnavailable with default headers values
func NewCreateNewNoSQLDatabaseCredentialV2ServiceUnavailable() *CreateNewNoSQLDatabaseCredentialV2ServiceUnavailable {
	return &CreateNewNoSQLDatabaseCredentialV2ServiceUnavailable{}
}

/*CreateNewNoSQLDatabaseCredentialV2ServiceUnavailable handles this case with default header values.

  Service Unavailable
*/
type CreateNewNoSQLDatabaseCredentialV2ServiceUnavailable struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateNewNoSQLDatabaseCredentialV2ServiceUnavailable) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/credentials][%d] createNewNoSqlDatabaseCredentialV2ServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *CreateNewNoSQLDatabaseCredentialV2ServiceUnavailable) ToJSONString() string {
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

func (o *CreateNewNoSQLDatabaseCredentialV2ServiceUnavailable) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNewNoSQLDatabaseCredentialV2ServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
