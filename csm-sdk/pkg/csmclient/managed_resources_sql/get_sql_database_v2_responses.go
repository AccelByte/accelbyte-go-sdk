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

// GetSQLDatabaseV2Reader is a Reader for the GetSQLDatabaseV2 structure.
type GetSQLDatabaseV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetSQLDatabaseV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetSQLDatabaseV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetSQLDatabaseV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetSQLDatabaseV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetSQLDatabaseV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetSQLDatabaseV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetSQLDatabaseV2OK creates a GetSQLDatabaseV2OK with default headers values
func NewGetSQLDatabaseV2OK() *GetSQLDatabaseV2OK {
	return &GetSQLDatabaseV2OK{}
}

/*GetSQLDatabaseV2OK handles this case with default header values.

  OK
*/
type GetSQLDatabaseV2OK struct {
	Payload *csmclientmodels.ApimodelSQLDatabaseResponse
}

func (o *GetSQLDatabaseV2OK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases][%d] getSqlDatabaseV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetSQLDatabaseV2OK) ToJSONString() string {
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

func (o *GetSQLDatabaseV2OK) GetPayload() *csmclientmodels.ApimodelSQLDatabaseResponse {
	return o.Payload
}

func (o *GetSQLDatabaseV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelSQLDatabaseResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSQLDatabaseV2Unauthorized creates a GetSQLDatabaseV2Unauthorized with default headers values
func NewGetSQLDatabaseV2Unauthorized() *GetSQLDatabaseV2Unauthorized {
	return &GetSQLDatabaseV2Unauthorized{}
}

/*GetSQLDatabaseV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetSQLDatabaseV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetSQLDatabaseV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases][%d] getSqlDatabaseV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetSQLDatabaseV2Unauthorized) ToJSONString() string {
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

func (o *GetSQLDatabaseV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSQLDatabaseV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSQLDatabaseV2Forbidden creates a GetSQLDatabaseV2Forbidden with default headers values
func NewGetSQLDatabaseV2Forbidden() *GetSQLDatabaseV2Forbidden {
	return &GetSQLDatabaseV2Forbidden{}
}

/*GetSQLDatabaseV2Forbidden handles this case with default header values.

  Forbidden
*/
type GetSQLDatabaseV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetSQLDatabaseV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases][%d] getSqlDatabaseV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetSQLDatabaseV2Forbidden) ToJSONString() string {
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

func (o *GetSQLDatabaseV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSQLDatabaseV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSQLDatabaseV2NotFound creates a GetSQLDatabaseV2NotFound with default headers values
func NewGetSQLDatabaseV2NotFound() *GetSQLDatabaseV2NotFound {
	return &GetSQLDatabaseV2NotFound{}
}

/*GetSQLDatabaseV2NotFound handles this case with default header values.

  Not Found
*/
type GetSQLDatabaseV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetSQLDatabaseV2NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases][%d] getSqlDatabaseV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetSQLDatabaseV2NotFound) ToJSONString() string {
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

func (o *GetSQLDatabaseV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSQLDatabaseV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSQLDatabaseV2InternalServerError creates a GetSQLDatabaseV2InternalServerError with default headers values
func NewGetSQLDatabaseV2InternalServerError() *GetSQLDatabaseV2InternalServerError {
	return &GetSQLDatabaseV2InternalServerError{}
}

/*GetSQLDatabaseV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetSQLDatabaseV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetSQLDatabaseV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases][%d] getSqlDatabaseV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetSQLDatabaseV2InternalServerError) ToJSONString() string {
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

func (o *GetSQLDatabaseV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSQLDatabaseV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
