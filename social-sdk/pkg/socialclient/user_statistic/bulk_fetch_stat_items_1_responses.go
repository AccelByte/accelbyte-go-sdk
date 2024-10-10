// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// BulkFetchStatItems1Reader is a Reader for the BulkFetchStatItems1 structure.
type BulkFetchStatItems1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkFetchStatItems1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkFetchStatItems1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkFetchStatItems1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkFetchStatItems1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkFetchStatItems1UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkFetchStatItems1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/public/namespaces/{namespace}/statitems/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkFetchStatItems1OK creates a BulkFetchStatItems1OK with default headers values
func NewBulkFetchStatItems1OK() *BulkFetchStatItems1OK {
	return &BulkFetchStatItems1OK{}
}

/*BulkFetchStatItems1OK handles this case with default header values.

  successful operation
*/
type BulkFetchStatItems1OK struct {
	Payload []*socialclientmodels.UserStatItemInfo
}

func (o *BulkFetchStatItems1OK) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/statitems/bulk][%d] bulkFetchStatItems1OK  %+v", 200, o.ToJSONString())
}

func (o *BulkFetchStatItems1OK) ToJSONString() string {
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

func (o *BulkFetchStatItems1OK) GetPayload() []*socialclientmodels.UserStatItemInfo {
	return o.Payload
}

func (o *BulkFetchStatItems1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkFetchStatItems1Unauthorized creates a BulkFetchStatItems1Unauthorized with default headers values
func NewBulkFetchStatItems1Unauthorized() *BulkFetchStatItems1Unauthorized {
	return &BulkFetchStatItems1Unauthorized{}
}

/*BulkFetchStatItems1Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type BulkFetchStatItems1Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkFetchStatItems1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/statitems/bulk][%d] bulkFetchStatItems1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkFetchStatItems1Unauthorized) ToJSONString() string {
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

func (o *BulkFetchStatItems1Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkFetchStatItems1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkFetchStatItems1Forbidden creates a BulkFetchStatItems1Forbidden with default headers values
func NewBulkFetchStatItems1Forbidden() *BulkFetchStatItems1Forbidden {
	return &BulkFetchStatItems1Forbidden{}
}

/*BulkFetchStatItems1Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkFetchStatItems1Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkFetchStatItems1Forbidden) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/statitems/bulk][%d] bulkFetchStatItems1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkFetchStatItems1Forbidden) ToJSONString() string {
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

func (o *BulkFetchStatItems1Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkFetchStatItems1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkFetchStatItems1UnprocessableEntity creates a BulkFetchStatItems1UnprocessableEntity with default headers values
func NewBulkFetchStatItems1UnprocessableEntity() *BulkFetchStatItems1UnprocessableEntity {
	return &BulkFetchStatItems1UnprocessableEntity{}
}

/*BulkFetchStatItems1UnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkFetchStatItems1UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkFetchStatItems1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/statitems/bulk][%d] bulkFetchStatItems1UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkFetchStatItems1UnprocessableEntity) ToJSONString() string {
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

func (o *BulkFetchStatItems1UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkFetchStatItems1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkFetchStatItems1InternalServerError creates a BulkFetchStatItems1InternalServerError with default headers values
func NewBulkFetchStatItems1InternalServerError() *BulkFetchStatItems1InternalServerError {
	return &BulkFetchStatItems1InternalServerError{}
}

/*BulkFetchStatItems1InternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkFetchStatItems1InternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkFetchStatItems1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/statitems/bulk][%d] bulkFetchStatItems1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkFetchStatItems1InternalServerError) ToJSONString() string {
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

func (o *BulkFetchStatItems1InternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkFetchStatItems1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
