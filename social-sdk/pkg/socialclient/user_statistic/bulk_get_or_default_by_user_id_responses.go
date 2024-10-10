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

// BulkGetOrDefaultByUserIDReader is a Reader for the BulkGetOrDefaultByUserID structure.
type BulkGetOrDefaultByUserIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkGetOrDefaultByUserIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkGetOrDefaultByUserIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkGetOrDefaultByUserIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkGetOrDefaultByUserIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkGetOrDefaultByUserIDUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkGetOrDefaultByUserIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkGetOrDefaultByUserIDOK creates a BulkGetOrDefaultByUserIDOK with default headers values
func NewBulkGetOrDefaultByUserIDOK() *BulkGetOrDefaultByUserIDOK {
	return &BulkGetOrDefaultByUserIDOK{}
}

/*BulkGetOrDefaultByUserIDOK handles this case with default header values.

  successful operation
*/
type BulkGetOrDefaultByUserIDOK struct {
	Payload []*socialclientmodels.ADTOObjectForUserStatItemValue
}

func (o *BulkGetOrDefaultByUserIDOK) Error() string {
	return fmt.Sprintf("[POST /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault][%d] bulkGetOrDefaultByUserIdOK  %+v", 200, o.ToJSONString())
}

func (o *BulkGetOrDefaultByUserIDOK) ToJSONString() string {
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

func (o *BulkGetOrDefaultByUserIDOK) GetPayload() []*socialclientmodels.ADTOObjectForUserStatItemValue {
	return o.Payload
}

func (o *BulkGetOrDefaultByUserIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkGetOrDefaultByUserIDUnauthorized creates a BulkGetOrDefaultByUserIDUnauthorized with default headers values
func NewBulkGetOrDefaultByUserIDUnauthorized() *BulkGetOrDefaultByUserIDUnauthorized {
	return &BulkGetOrDefaultByUserIDUnauthorized{}
}

/*BulkGetOrDefaultByUserIDUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type BulkGetOrDefaultByUserIDUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkGetOrDefaultByUserIDUnauthorized) Error() string {
	return fmt.Sprintf("[POST /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault][%d] bulkGetOrDefaultByUserIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkGetOrDefaultByUserIDUnauthorized) ToJSONString() string {
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

func (o *BulkGetOrDefaultByUserIDUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkGetOrDefaultByUserIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkGetOrDefaultByUserIDForbidden creates a BulkGetOrDefaultByUserIDForbidden with default headers values
func NewBulkGetOrDefaultByUserIDForbidden() *BulkGetOrDefaultByUserIDForbidden {
	return &BulkGetOrDefaultByUserIDForbidden{}
}

/*BulkGetOrDefaultByUserIDForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkGetOrDefaultByUserIDForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkGetOrDefaultByUserIDForbidden) Error() string {
	return fmt.Sprintf("[POST /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault][%d] bulkGetOrDefaultByUserIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkGetOrDefaultByUserIDForbidden) ToJSONString() string {
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

func (o *BulkGetOrDefaultByUserIDForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkGetOrDefaultByUserIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkGetOrDefaultByUserIDUnprocessableEntity creates a BulkGetOrDefaultByUserIDUnprocessableEntity with default headers values
func NewBulkGetOrDefaultByUserIDUnprocessableEntity() *BulkGetOrDefaultByUserIDUnprocessableEntity {
	return &BulkGetOrDefaultByUserIDUnprocessableEntity{}
}

/*BulkGetOrDefaultByUserIDUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkGetOrDefaultByUserIDUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkGetOrDefaultByUserIDUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault][%d] bulkGetOrDefaultByUserIdUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkGetOrDefaultByUserIDUnprocessableEntity) ToJSONString() string {
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

func (o *BulkGetOrDefaultByUserIDUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkGetOrDefaultByUserIDUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkGetOrDefaultByUserIDInternalServerError creates a BulkGetOrDefaultByUserIDInternalServerError with default headers values
func NewBulkGetOrDefaultByUserIDInternalServerError() *BulkGetOrDefaultByUserIDInternalServerError {
	return &BulkGetOrDefaultByUserIDInternalServerError{}
}

/*BulkGetOrDefaultByUserIDInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkGetOrDefaultByUserIDInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkGetOrDefaultByUserIDInternalServerError) Error() string {
	return fmt.Sprintf("[POST /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault][%d] bulkGetOrDefaultByUserIdInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkGetOrDefaultByUserIDInternalServerError) ToJSONString() string {
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

func (o *BulkGetOrDefaultByUserIDInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkGetOrDefaultByUserIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
