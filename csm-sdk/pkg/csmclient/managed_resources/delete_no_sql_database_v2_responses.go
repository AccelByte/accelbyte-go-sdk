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

// DeleteNoSQLDatabaseV2Reader is a Reader for the DeleteNoSQLDatabaseV2 structure.
type DeleteNoSQLDatabaseV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteNoSQLDatabaseV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteNoSQLDatabaseV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteNoSQLDatabaseV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteNoSQLDatabaseV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteNoSQLDatabaseV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteNoSQLDatabaseV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteNoSQLDatabaseV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewDeleteNoSQLDatabaseV2ServiceUnavailable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteNoSQLDatabaseV2OK creates a DeleteNoSQLDatabaseV2OK with default headers values
func NewDeleteNoSQLDatabaseV2OK() *DeleteNoSQLDatabaseV2OK {
	return &DeleteNoSQLDatabaseV2OK{}
}

/*DeleteNoSQLDatabaseV2OK handles this case with default header values.

  OK
*/
type DeleteNoSQLDatabaseV2OK struct {
	Payload *csmclientmodels.ApimodelNoSQLDatabaseDeleteResponse
}

func (o *DeleteNoSQLDatabaseV2OK) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] deleteNoSqlDatabaseV2OK  %+v", 200, o.ToJSONString())
}

func (o *DeleteNoSQLDatabaseV2OK) ToJSONString() string {
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

func (o *DeleteNoSQLDatabaseV2OK) GetPayload() *csmclientmodels.ApimodelNoSQLDatabaseDeleteResponse {
	return o.Payload
}

func (o *DeleteNoSQLDatabaseV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelNoSQLDatabaseDeleteResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteNoSQLDatabaseV2BadRequest creates a DeleteNoSQLDatabaseV2BadRequest with default headers values
func NewDeleteNoSQLDatabaseV2BadRequest() *DeleteNoSQLDatabaseV2BadRequest {
	return &DeleteNoSQLDatabaseV2BadRequest{}
}

/*DeleteNoSQLDatabaseV2BadRequest handles this case with default header values.

  Bad Request
*/
type DeleteNoSQLDatabaseV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteNoSQLDatabaseV2BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] deleteNoSqlDatabaseV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteNoSQLDatabaseV2BadRequest) ToJSONString() string {
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

func (o *DeleteNoSQLDatabaseV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteNoSQLDatabaseV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteNoSQLDatabaseV2Unauthorized creates a DeleteNoSQLDatabaseV2Unauthorized with default headers values
func NewDeleteNoSQLDatabaseV2Unauthorized() *DeleteNoSQLDatabaseV2Unauthorized {
	return &DeleteNoSQLDatabaseV2Unauthorized{}
}

/*DeleteNoSQLDatabaseV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteNoSQLDatabaseV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteNoSQLDatabaseV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] deleteNoSqlDatabaseV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteNoSQLDatabaseV2Unauthorized) ToJSONString() string {
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

func (o *DeleteNoSQLDatabaseV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteNoSQLDatabaseV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteNoSQLDatabaseV2Forbidden creates a DeleteNoSQLDatabaseV2Forbidden with default headers values
func NewDeleteNoSQLDatabaseV2Forbidden() *DeleteNoSQLDatabaseV2Forbidden {
	return &DeleteNoSQLDatabaseV2Forbidden{}
}

/*DeleteNoSQLDatabaseV2Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteNoSQLDatabaseV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteNoSQLDatabaseV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] deleteNoSqlDatabaseV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteNoSQLDatabaseV2Forbidden) ToJSONString() string {
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

func (o *DeleteNoSQLDatabaseV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteNoSQLDatabaseV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteNoSQLDatabaseV2NotFound creates a DeleteNoSQLDatabaseV2NotFound with default headers values
func NewDeleteNoSQLDatabaseV2NotFound() *DeleteNoSQLDatabaseV2NotFound {
	return &DeleteNoSQLDatabaseV2NotFound{}
}

/*DeleteNoSQLDatabaseV2NotFound handles this case with default header values.

  Not Found
*/
type DeleteNoSQLDatabaseV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteNoSQLDatabaseV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] deleteNoSqlDatabaseV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteNoSQLDatabaseV2NotFound) ToJSONString() string {
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

func (o *DeleteNoSQLDatabaseV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteNoSQLDatabaseV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteNoSQLDatabaseV2InternalServerError creates a DeleteNoSQLDatabaseV2InternalServerError with default headers values
func NewDeleteNoSQLDatabaseV2InternalServerError() *DeleteNoSQLDatabaseV2InternalServerError {
	return &DeleteNoSQLDatabaseV2InternalServerError{}
}

/*DeleteNoSQLDatabaseV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteNoSQLDatabaseV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteNoSQLDatabaseV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] deleteNoSqlDatabaseV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteNoSQLDatabaseV2InternalServerError) ToJSONString() string {
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

func (o *DeleteNoSQLDatabaseV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteNoSQLDatabaseV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteNoSQLDatabaseV2ServiceUnavailable creates a DeleteNoSQLDatabaseV2ServiceUnavailable with default headers values
func NewDeleteNoSQLDatabaseV2ServiceUnavailable() *DeleteNoSQLDatabaseV2ServiceUnavailable {
	return &DeleteNoSQLDatabaseV2ServiceUnavailable{}
}

/*DeleteNoSQLDatabaseV2ServiceUnavailable handles this case with default header values.

  Service Unavailable
*/
type DeleteNoSQLDatabaseV2ServiceUnavailable struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteNoSQLDatabaseV2ServiceUnavailable) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] deleteNoSqlDatabaseV2ServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *DeleteNoSQLDatabaseV2ServiceUnavailable) ToJSONString() string {
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

func (o *DeleteNoSQLDatabaseV2ServiceUnavailable) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteNoSQLDatabaseV2ServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
