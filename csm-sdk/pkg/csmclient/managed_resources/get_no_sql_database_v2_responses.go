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

// GetNoSQLDatabaseV2Reader is a Reader for the GetNoSQLDatabaseV2 structure.
type GetNoSQLDatabaseV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetNoSQLDatabaseV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetNoSQLDatabaseV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetNoSQLDatabaseV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetNoSQLDatabaseV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetNoSQLDatabaseV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetNoSQLDatabaseV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetNoSQLDatabaseV2OK creates a GetNoSQLDatabaseV2OK with default headers values
func NewGetNoSQLDatabaseV2OK() *GetNoSQLDatabaseV2OK {
	return &GetNoSQLDatabaseV2OK{}
}

/*GetNoSQLDatabaseV2OK handles this case with default header values.

  OK
*/
type GetNoSQLDatabaseV2OK struct {
	Payload *csmclientmodels.ApimodelNoSQLDatabaseResponse
}

func (o *GetNoSQLDatabaseV2OK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] getNoSqlDatabaseV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetNoSQLDatabaseV2OK) ToJSONString() string {
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

func (o *GetNoSQLDatabaseV2OK) GetPayload() *csmclientmodels.ApimodelNoSQLDatabaseResponse {
	return o.Payload
}

func (o *GetNoSQLDatabaseV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNoSQLDatabaseV2Unauthorized creates a GetNoSQLDatabaseV2Unauthorized with default headers values
func NewGetNoSQLDatabaseV2Unauthorized() *GetNoSQLDatabaseV2Unauthorized {
	return &GetNoSQLDatabaseV2Unauthorized{}
}

/*GetNoSQLDatabaseV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetNoSQLDatabaseV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLDatabaseV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] getNoSqlDatabaseV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetNoSQLDatabaseV2Unauthorized) ToJSONString() string {
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

func (o *GetNoSQLDatabaseV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLDatabaseV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNoSQLDatabaseV2Forbidden creates a GetNoSQLDatabaseV2Forbidden with default headers values
func NewGetNoSQLDatabaseV2Forbidden() *GetNoSQLDatabaseV2Forbidden {
	return &GetNoSQLDatabaseV2Forbidden{}
}

/*GetNoSQLDatabaseV2Forbidden handles this case with default header values.

  Forbidden
*/
type GetNoSQLDatabaseV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLDatabaseV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] getNoSqlDatabaseV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetNoSQLDatabaseV2Forbidden) ToJSONString() string {
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

func (o *GetNoSQLDatabaseV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLDatabaseV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNoSQLDatabaseV2NotFound creates a GetNoSQLDatabaseV2NotFound with default headers values
func NewGetNoSQLDatabaseV2NotFound() *GetNoSQLDatabaseV2NotFound {
	return &GetNoSQLDatabaseV2NotFound{}
}

/*GetNoSQLDatabaseV2NotFound handles this case with default header values.

  Not Found
*/
type GetNoSQLDatabaseV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLDatabaseV2NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] getNoSqlDatabaseV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetNoSQLDatabaseV2NotFound) ToJSONString() string {
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

func (o *GetNoSQLDatabaseV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLDatabaseV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNoSQLDatabaseV2InternalServerError creates a GetNoSQLDatabaseV2InternalServerError with default headers values
func NewGetNoSQLDatabaseV2InternalServerError() *GetNoSQLDatabaseV2InternalServerError {
	return &GetNoSQLDatabaseV2InternalServerError{}
}

/*GetNoSQLDatabaseV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetNoSQLDatabaseV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNoSQLDatabaseV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases][%d] getNoSqlDatabaseV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetNoSQLDatabaseV2InternalServerError) ToJSONString() string {
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

func (o *GetNoSQLDatabaseV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNoSQLDatabaseV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
