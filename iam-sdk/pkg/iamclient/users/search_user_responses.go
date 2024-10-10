// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// SearchUserReader is a Reader for the SearchUser structure.
type SearchUserReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SearchUserReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSearchUserOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSearchUserBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSearchUserUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSearchUserForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/namespaces/{namespace}/users/search returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSearchUserOK creates a SearchUserOK with default headers values
func NewSearchUserOK() *SearchUserOK {
	return &SearchUserOK{}
}

/*SearchUserOK handles this case with default header values.

  OK
*/
type SearchUserOK struct {
	Payload *iamclientmodels.ModelSearchUsersResponse
}

func (o *SearchUserOK) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/search][%d] searchUserOK  %+v", 200, o.ToJSONString())
}

func (o *SearchUserOK) ToJSONString() string {
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

func (o *SearchUserOK) GetPayload() *iamclientmodels.ModelSearchUsersResponse {
	return o.Payload
}

func (o *SearchUserOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelSearchUsersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSearchUserBadRequest creates a SearchUserBadRequest with default headers values
func NewSearchUserBadRequest() *SearchUserBadRequest {
	return &SearchUserBadRequest{}
}

/*SearchUserBadRequest handles this case with default header values.

  Invalid request
*/
type SearchUserBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SearchUserBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/search][%d] searchUserBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SearchUserBadRequest) ToJSONString() string {
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

func (o *SearchUserBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SearchUserBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSearchUserUnauthorized creates a SearchUserUnauthorized with default headers values
func NewSearchUserUnauthorized() *SearchUserUnauthorized {
	return &SearchUserUnauthorized{}
}

/*SearchUserUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SearchUserUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SearchUserUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/search][%d] searchUserUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SearchUserUnauthorized) ToJSONString() string {
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

func (o *SearchUserUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SearchUserUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSearchUserForbidden creates a SearchUserForbidden with default headers values
func NewSearchUserForbidden() *SearchUserForbidden {
	return &SearchUserForbidden{}
}

/*SearchUserForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type SearchUserForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SearchUserForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/search][%d] searchUserForbidden  %+v", 403, o.ToJSONString())
}

func (o *SearchUserForbidden) ToJSONString() string {
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

func (o *SearchUserForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SearchUserForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
