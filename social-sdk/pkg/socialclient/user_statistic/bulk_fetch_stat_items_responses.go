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

// BulkFetchStatItemsReader is a Reader for the BulkFetchStatItems structure.
type BulkFetchStatItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkFetchStatItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkFetchStatItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkFetchStatItemsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkFetchStatItemsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkFetchStatItemsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkFetchStatItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/admin/namespaces/{namespace}/statitems/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkFetchStatItemsOK creates a BulkFetchStatItemsOK with default headers values
func NewBulkFetchStatItemsOK() *BulkFetchStatItemsOK {
	return &BulkFetchStatItemsOK{}
}

/*BulkFetchStatItemsOK handles this case with default header values.

  successful operation
*/
type BulkFetchStatItemsOK struct {
	Payload []*socialclientmodels.UserStatItemInfo
}

func (o *BulkFetchStatItemsOK) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/statitems/bulk][%d] bulkFetchStatItemsOK  %+v", 200, o.ToJSONString())
}

func (o *BulkFetchStatItemsOK) ToJSONString() string {
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

func (o *BulkFetchStatItemsOK) GetPayload() []*socialclientmodels.UserStatItemInfo {
	return o.Payload
}

func (o *BulkFetchStatItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkFetchStatItemsUnauthorized creates a BulkFetchStatItemsUnauthorized with default headers values
func NewBulkFetchStatItemsUnauthorized() *BulkFetchStatItemsUnauthorized {
	return &BulkFetchStatItemsUnauthorized{}
}

/*BulkFetchStatItemsUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type BulkFetchStatItemsUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkFetchStatItemsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/statitems/bulk][%d] bulkFetchStatItemsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkFetchStatItemsUnauthorized) ToJSONString() string {
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

func (o *BulkFetchStatItemsUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkFetchStatItemsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkFetchStatItemsForbidden creates a BulkFetchStatItemsForbidden with default headers values
func NewBulkFetchStatItemsForbidden() *BulkFetchStatItemsForbidden {
	return &BulkFetchStatItemsForbidden{}
}

/*BulkFetchStatItemsForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkFetchStatItemsForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkFetchStatItemsForbidden) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/statitems/bulk][%d] bulkFetchStatItemsForbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkFetchStatItemsForbidden) ToJSONString() string {
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

func (o *BulkFetchStatItemsForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkFetchStatItemsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkFetchStatItemsUnprocessableEntity creates a BulkFetchStatItemsUnprocessableEntity with default headers values
func NewBulkFetchStatItemsUnprocessableEntity() *BulkFetchStatItemsUnprocessableEntity {
	return &BulkFetchStatItemsUnprocessableEntity{}
}

/*BulkFetchStatItemsUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkFetchStatItemsUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkFetchStatItemsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/statitems/bulk][%d] bulkFetchStatItemsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkFetchStatItemsUnprocessableEntity) ToJSONString() string {
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

func (o *BulkFetchStatItemsUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkFetchStatItemsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkFetchStatItemsInternalServerError creates a BulkFetchStatItemsInternalServerError with default headers values
func NewBulkFetchStatItemsInternalServerError() *BulkFetchStatItemsInternalServerError {
	return &BulkFetchStatItemsInternalServerError{}
}

/*BulkFetchStatItemsInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkFetchStatItemsInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkFetchStatItemsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/statitems/bulk][%d] bulkFetchStatItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkFetchStatItemsInternalServerError) ToJSONString() string {
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

func (o *BulkFetchStatItemsInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkFetchStatItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
