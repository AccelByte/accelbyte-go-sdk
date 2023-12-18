// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package anonymization

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// DeleteAllUserStatesReader is a Reader for the DeleteAllUserStates structure.
type DeleteAllUserStatesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteAllUserStatesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteAllUserStatesNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteAllUserStatesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteAllUserStatesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteAllUserStatesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/states returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteAllUserStatesNoContent creates a DeleteAllUserStatesNoContent with default headers values
func NewDeleteAllUserStatesNoContent() *DeleteAllUserStatesNoContent {
	return &DeleteAllUserStatesNoContent{}
}

/*DeleteAllUserStatesNoContent handles this case with default header values.

  User stats deleted
*/
type DeleteAllUserStatesNoContent struct {
}

func (o *DeleteAllUserStatesNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/states][%d] deleteAllUserStatesNoContent ", 204)
}

func (o *DeleteAllUserStatesNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteAllUserStatesBadRequest creates a DeleteAllUserStatesBadRequest with default headers values
func NewDeleteAllUserStatesBadRequest() *DeleteAllUserStatesBadRequest {
	return &DeleteAllUserStatesBadRequest{}
}

/*DeleteAllUserStatesBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773602</td><td>user states are not found: content not found</td></tr></table>
*/
type DeleteAllUserStatesBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteAllUserStatesBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/states][%d] deleteAllUserStatesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteAllUserStatesBadRequest) ToJSONString() string {
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

func (o *DeleteAllUserStatesBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteAllUserStatesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteAllUserStatesUnauthorized creates a DeleteAllUserStatesUnauthorized with default headers values
func NewDeleteAllUserStatesUnauthorized() *DeleteAllUserStatesUnauthorized {
	return &DeleteAllUserStatesUnauthorized{}
}

/*DeleteAllUserStatesUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteAllUserStatesUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteAllUserStatesUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/states][%d] deleteAllUserStatesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteAllUserStatesUnauthorized) ToJSONString() string {
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

func (o *DeleteAllUserStatesUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteAllUserStatesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteAllUserStatesInternalServerError creates a DeleteAllUserStatesInternalServerError with default headers values
func NewDeleteAllUserStatesInternalServerError() *DeleteAllUserStatesInternalServerError {
	return &DeleteAllUserStatesInternalServerError{}
}

/*DeleteAllUserStatesInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773601</td><td>Unable to get all user contents/Unable to delete user states</td></tr></table>
*/
type DeleteAllUserStatesInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteAllUserStatesInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/states][%d] deleteAllUserStatesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteAllUserStatesInternalServerError) ToJSONString() string {
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

func (o *DeleteAllUserStatesInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteAllUserStatesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
