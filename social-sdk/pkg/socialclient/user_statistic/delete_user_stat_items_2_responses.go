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

// DeleteUserStatItems2Reader is a Reader for the DeleteUserStatItems2 structure.
type DeleteUserStatItems2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteUserStatItems2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteUserStatItems2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteUserStatItems2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteUserStatItems2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteUserStatItems2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteUserStatItems2NoContent creates a DeleteUserStatItems2NoContent with default headers values
func NewDeleteUserStatItems2NoContent() *DeleteUserStatItems2NoContent {
	return &DeleteUserStatItems2NoContent{}
}

/*DeleteUserStatItems2NoContent handles this case with default header values.

  delete successfully
*/
type DeleteUserStatItems2NoContent struct {
}

func (o *DeleteUserStatItems2NoContent) Error() string {
	return fmt.Sprintf("[DELETE /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] deleteUserStatItems2NoContent ", 204)
}

func (o *DeleteUserStatItems2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserStatItems2Unauthorized creates a DeleteUserStatItems2Unauthorized with default headers values
func NewDeleteUserStatItems2Unauthorized() *DeleteUserStatItems2Unauthorized {
	return &DeleteUserStatItems2Unauthorized{}
}

/*DeleteUserStatItems2Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteUserStatItems2Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteUserStatItems2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] deleteUserStatItems2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteUserStatItems2Unauthorized) ToJSONString() string {
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

func (o *DeleteUserStatItems2Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteUserStatItems2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteUserStatItems2Forbidden creates a DeleteUserStatItems2Forbidden with default headers values
func NewDeleteUserStatItems2Forbidden() *DeleteUserStatItems2Forbidden {
	return &DeleteUserStatItems2Forbidden{}
}

/*DeleteUserStatItems2Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type DeleteUserStatItems2Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteUserStatItems2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] deleteUserStatItems2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteUserStatItems2Forbidden) ToJSONString() string {
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

func (o *DeleteUserStatItems2Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteUserStatItems2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteUserStatItems2NotFound creates a DeleteUserStatItems2NotFound with default headers values
func NewDeleteUserStatItems2NotFound() *DeleteUserStatItems2NotFound {
	return &DeleteUserStatItems2NotFound{}
}

/*DeleteUserStatItems2NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12242</td><td>Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type DeleteUserStatItems2NotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteUserStatItems2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] deleteUserStatItems2NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteUserStatItems2NotFound) ToJSONString() string {
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

func (o *DeleteUserStatItems2NotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteUserStatItems2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
