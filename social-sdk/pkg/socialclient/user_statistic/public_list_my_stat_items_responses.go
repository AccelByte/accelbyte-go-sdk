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

// PublicListMyStatItemsReader is a Reader for the PublicListMyStatItems structure.
type PublicListMyStatItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListMyStatItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListMyStatItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicListMyStatItemsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicListMyStatItemsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicListMyStatItemsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListMyStatItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/public/namespaces/{namespace}/users/me/statitems returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListMyStatItemsOK creates a PublicListMyStatItemsOK with default headers values
func NewPublicListMyStatItemsOK() *PublicListMyStatItemsOK {
	return &PublicListMyStatItemsOK{}
}

/*PublicListMyStatItemsOK handles this case with default header values.

  successful operation
*/
type PublicListMyStatItemsOK struct {
	Payload *socialclientmodels.UserStatItemPagingSlicedResult
}

func (o *PublicListMyStatItemsOK) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/me/statitems][%d] publicListMyStatItemsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicListMyStatItemsOK) ToJSONString() string {
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

func (o *PublicListMyStatItemsOK) GetPayload() *socialclientmodels.UserStatItemPagingSlicedResult {
	return o.Payload
}

func (o *PublicListMyStatItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.UserStatItemPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicListMyStatItemsUnauthorized creates a PublicListMyStatItemsUnauthorized with default headers values
func NewPublicListMyStatItemsUnauthorized() *PublicListMyStatItemsUnauthorized {
	return &PublicListMyStatItemsUnauthorized{}
}

/*PublicListMyStatItemsUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicListMyStatItemsUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicListMyStatItemsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/me/statitems][%d] publicListMyStatItemsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicListMyStatItemsUnauthorized) ToJSONString() string {
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

func (o *PublicListMyStatItemsUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicListMyStatItemsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicListMyStatItemsForbidden creates a PublicListMyStatItemsForbidden with default headers values
func NewPublicListMyStatItemsForbidden() *PublicListMyStatItemsForbidden {
	return &PublicListMyStatItemsForbidden{}
}

/*PublicListMyStatItemsForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicListMyStatItemsForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicListMyStatItemsForbidden) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/me/statitems][%d] publicListMyStatItemsForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicListMyStatItemsForbidden) ToJSONString() string {
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

func (o *PublicListMyStatItemsForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicListMyStatItemsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicListMyStatItemsUnprocessableEntity creates a PublicListMyStatItemsUnprocessableEntity with default headers values
func NewPublicListMyStatItemsUnprocessableEntity() *PublicListMyStatItemsUnprocessableEntity {
	return &PublicListMyStatItemsUnprocessableEntity{}
}

/*PublicListMyStatItemsUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicListMyStatItemsUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicListMyStatItemsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/me/statitems][%d] publicListMyStatItemsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicListMyStatItemsUnprocessableEntity) ToJSONString() string {
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

func (o *PublicListMyStatItemsUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicListMyStatItemsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicListMyStatItemsInternalServerError creates a PublicListMyStatItemsInternalServerError with default headers values
func NewPublicListMyStatItemsInternalServerError() *PublicListMyStatItemsInternalServerError {
	return &PublicListMyStatItemsInternalServerError{}
}

/*PublicListMyStatItemsInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicListMyStatItemsInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicListMyStatItemsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/v1/public/namespaces/{namespace}/users/me/statitems][%d] publicListMyStatItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListMyStatItemsInternalServerError) ToJSONString() string {
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

func (o *PublicListMyStatItemsInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicListMyStatItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
