// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package anonymization

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

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

  No Content
*/
type DeleteAllUserStatesNoContent struct {
}

func (o *DeleteAllUserStatesNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/states][%d] deleteAllUserStatesNoContent ", 204)
}

func (o *DeleteAllUserStatesNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewDeleteAllUserStatesBadRequest creates a DeleteAllUserStatesBadRequest with default headers values
func NewDeleteAllUserStatesBadRequest() *DeleteAllUserStatesBadRequest {
	return &DeleteAllUserStatesBadRequest{}
}

/*DeleteAllUserStatesBadRequest handles this case with default header values.

  Bad Request
*/
type DeleteAllUserStatesBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteAllUserStatesBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/states][%d] deleteAllUserStatesBadRequest  %+v", 400, o.Payload)
}

func (o *DeleteAllUserStatesBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteAllUserStatesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

  Unauthorized
*/
type DeleteAllUserStatesUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteAllUserStatesUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/states][%d] deleteAllUserStatesUnauthorized  %+v", 401, o.Payload)
}

func (o *DeleteAllUserStatesUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteAllUserStatesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

  Internal Server Error
*/
type DeleteAllUserStatesInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteAllUserStatesInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/states][%d] deleteAllUserStatesInternalServerError  %+v", 500, o.Payload)
}

func (o *DeleteAllUserStatesInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteAllUserStatesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
