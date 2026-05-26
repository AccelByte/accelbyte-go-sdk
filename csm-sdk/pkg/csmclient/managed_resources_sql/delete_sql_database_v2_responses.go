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

// DeleteSQLDatabaseV2Reader is a Reader for the DeleteSQLDatabaseV2 structure.
type DeleteSQLDatabaseV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteSQLDatabaseV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteSQLDatabaseV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteSQLDatabaseV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteSQLDatabaseV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteSQLDatabaseV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteSQLDatabaseV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteSQLDatabaseV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewDeleteSQLDatabaseV2ServiceUnavailable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteSQLDatabaseV2OK creates a DeleteSQLDatabaseV2OK with default headers values
func NewDeleteSQLDatabaseV2OK() *DeleteSQLDatabaseV2OK {
	return &DeleteSQLDatabaseV2OK{}
}

/*DeleteSQLDatabaseV2OK handles this case with default header values.

  OK
*/
type DeleteSQLDatabaseV2OK struct {
	Payload *csmclientmodels.ApimodelSQLDatabaseDeleteResponse
}

func (o *DeleteSQLDatabaseV2OK) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases][%d] deleteSqlDatabaseV2OK  %+v", 200, o.ToJSONString())
}

func (o *DeleteSQLDatabaseV2OK) ToJSONString() string {
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

func (o *DeleteSQLDatabaseV2OK) GetPayload() *csmclientmodels.ApimodelSQLDatabaseDeleteResponse {
	return o.Payload
}

func (o *DeleteSQLDatabaseV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelSQLDatabaseDeleteResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteSQLDatabaseV2BadRequest creates a DeleteSQLDatabaseV2BadRequest with default headers values
func NewDeleteSQLDatabaseV2BadRequest() *DeleteSQLDatabaseV2BadRequest {
	return &DeleteSQLDatabaseV2BadRequest{}
}

/*DeleteSQLDatabaseV2BadRequest handles this case with default header values.

  Bad Request
*/
type DeleteSQLDatabaseV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSQLDatabaseV2BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases][%d] deleteSqlDatabaseV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteSQLDatabaseV2BadRequest) ToJSONString() string {
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

func (o *DeleteSQLDatabaseV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSQLDatabaseV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSQLDatabaseV2Unauthorized creates a DeleteSQLDatabaseV2Unauthorized with default headers values
func NewDeleteSQLDatabaseV2Unauthorized() *DeleteSQLDatabaseV2Unauthorized {
	return &DeleteSQLDatabaseV2Unauthorized{}
}

/*DeleteSQLDatabaseV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteSQLDatabaseV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSQLDatabaseV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases][%d] deleteSqlDatabaseV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteSQLDatabaseV2Unauthorized) ToJSONString() string {
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

func (o *DeleteSQLDatabaseV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSQLDatabaseV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSQLDatabaseV2Forbidden creates a DeleteSQLDatabaseV2Forbidden with default headers values
func NewDeleteSQLDatabaseV2Forbidden() *DeleteSQLDatabaseV2Forbidden {
	return &DeleteSQLDatabaseV2Forbidden{}
}

/*DeleteSQLDatabaseV2Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteSQLDatabaseV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSQLDatabaseV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases][%d] deleteSqlDatabaseV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteSQLDatabaseV2Forbidden) ToJSONString() string {
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

func (o *DeleteSQLDatabaseV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSQLDatabaseV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSQLDatabaseV2NotFound creates a DeleteSQLDatabaseV2NotFound with default headers values
func NewDeleteSQLDatabaseV2NotFound() *DeleteSQLDatabaseV2NotFound {
	return &DeleteSQLDatabaseV2NotFound{}
}

/*DeleteSQLDatabaseV2NotFound handles this case with default header values.

  Not Found
*/
type DeleteSQLDatabaseV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSQLDatabaseV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases][%d] deleteSqlDatabaseV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteSQLDatabaseV2NotFound) ToJSONString() string {
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

func (o *DeleteSQLDatabaseV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSQLDatabaseV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSQLDatabaseV2InternalServerError creates a DeleteSQLDatabaseV2InternalServerError with default headers values
func NewDeleteSQLDatabaseV2InternalServerError() *DeleteSQLDatabaseV2InternalServerError {
	return &DeleteSQLDatabaseV2InternalServerError{}
}

/*DeleteSQLDatabaseV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteSQLDatabaseV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSQLDatabaseV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases][%d] deleteSqlDatabaseV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteSQLDatabaseV2InternalServerError) ToJSONString() string {
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

func (o *DeleteSQLDatabaseV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSQLDatabaseV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSQLDatabaseV2ServiceUnavailable creates a DeleteSQLDatabaseV2ServiceUnavailable with default headers values
func NewDeleteSQLDatabaseV2ServiceUnavailable() *DeleteSQLDatabaseV2ServiceUnavailable {
	return &DeleteSQLDatabaseV2ServiceUnavailable{}
}

/*DeleteSQLDatabaseV2ServiceUnavailable handles this case with default header values.

  Service Unavailable
*/
type DeleteSQLDatabaseV2ServiceUnavailable struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSQLDatabaseV2ServiceUnavailable) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases][%d] deleteSqlDatabaseV2ServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *DeleteSQLDatabaseV2ServiceUnavailable) ToJSONString() string {
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

func (o *DeleteSQLDatabaseV2ServiceUnavailable) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSQLDatabaseV2ServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
