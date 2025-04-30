// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_functions

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// MatchFunctionGetReader is a Reader for the MatchFunctionGet structure.
type MatchFunctionGetReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *MatchFunctionGetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewMatchFunctionGetOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewMatchFunctionGetUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewMatchFunctionGetForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewMatchFunctionGetNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewMatchFunctionGetInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/namespaces/{namespace}/match-functions/{name} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewMatchFunctionGetOK creates a MatchFunctionGetOK with default headers values
func NewMatchFunctionGetOK() *MatchFunctionGetOK {
	return &MatchFunctionGetOK{}
}

/*MatchFunctionGetOK handles this case with default header values.

  Created
*/
type MatchFunctionGetOK struct {
	Payload *match2clientmodels.APIMatchFunctionConfig
}

func (o *MatchFunctionGetOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-functions/{name}][%d] matchFunctionGetOK  %+v", 200, o.ToJSONString())
}

func (o *MatchFunctionGetOK) ToJSONString() string {
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

func (o *MatchFunctionGetOK) GetPayload() *match2clientmodels.APIMatchFunctionConfig {
	return o.Payload
}

func (o *MatchFunctionGetOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIMatchFunctionConfig)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewMatchFunctionGetUnauthorized creates a MatchFunctionGetUnauthorized with default headers values
func NewMatchFunctionGetUnauthorized() *MatchFunctionGetUnauthorized {
	return &MatchFunctionGetUnauthorized{}
}

/*MatchFunctionGetUnauthorized handles this case with default header values.

  Unauthorized
*/
type MatchFunctionGetUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchFunctionGetUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-functions/{name}][%d] matchFunctionGetUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *MatchFunctionGetUnauthorized) ToJSONString() string {
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

func (o *MatchFunctionGetUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchFunctionGetUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewMatchFunctionGetForbidden creates a MatchFunctionGetForbidden with default headers values
func NewMatchFunctionGetForbidden() *MatchFunctionGetForbidden {
	return &MatchFunctionGetForbidden{}
}

/*MatchFunctionGetForbidden handles this case with default header values.

  Forbidden
*/
type MatchFunctionGetForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchFunctionGetForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-functions/{name}][%d] matchFunctionGetForbidden  %+v", 403, o.ToJSONString())
}

func (o *MatchFunctionGetForbidden) ToJSONString() string {
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

func (o *MatchFunctionGetForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchFunctionGetForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewMatchFunctionGetNotFound creates a MatchFunctionGetNotFound with default headers values
func NewMatchFunctionGetNotFound() *MatchFunctionGetNotFound {
	return &MatchFunctionGetNotFound{}
}

/*MatchFunctionGetNotFound handles this case with default header values.

  Not Found
*/
type MatchFunctionGetNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchFunctionGetNotFound) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-functions/{name}][%d] matchFunctionGetNotFound  %+v", 404, o.ToJSONString())
}

func (o *MatchFunctionGetNotFound) ToJSONString() string {
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

func (o *MatchFunctionGetNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchFunctionGetNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewMatchFunctionGetInternalServerError creates a MatchFunctionGetInternalServerError with default headers values
func NewMatchFunctionGetInternalServerError() *MatchFunctionGetInternalServerError {
	return &MatchFunctionGetInternalServerError{}
}

/*MatchFunctionGetInternalServerError handles this case with default header values.

  Internal Server Error
*/
type MatchFunctionGetInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchFunctionGetInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-functions/{name}][%d] matchFunctionGetInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *MatchFunctionGetInternalServerError) ToJSONString() string {
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

func (o *MatchFunctionGetInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchFunctionGetInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
