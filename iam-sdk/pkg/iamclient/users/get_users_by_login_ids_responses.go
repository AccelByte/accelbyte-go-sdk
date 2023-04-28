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

// GetUsersByLoginIdsReader is a Reader for the GetUsersByLoginIds structure.
type GetUsersByLoginIdsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUsersByLoginIdsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUsersByLoginIdsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUsersByLoginIdsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUsersByLoginIdsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUsersByLoginIdsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/namespaces/{namespace}/users/listByLoginIds returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUsersByLoginIdsOK creates a GetUsersByLoginIdsOK with default headers values
func NewGetUsersByLoginIdsOK() *GetUsersByLoginIdsOK {
	return &GetUsersByLoginIdsOK{}
}

/*GetUsersByLoginIdsOK handles this case with default header values.

  OK
*/
type GetUsersByLoginIdsOK struct {
	Payload *iamclientmodels.ModelPublicUsersResponse
}

func (o *GetUsersByLoginIdsOK) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/listByLoginIds][%d] getUsersByLoginIdsOK  %+v", 200, o.ToJSONString())
}

func (o *GetUsersByLoginIdsOK) ToJSONString() string {
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

func (o *GetUsersByLoginIdsOK) GetPayload() *iamclientmodels.ModelPublicUsersResponse {
	return o.Payload
}

func (o *GetUsersByLoginIdsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelPublicUsersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUsersByLoginIdsBadRequest creates a GetUsersByLoginIdsBadRequest with default headers values
func NewGetUsersByLoginIdsBadRequest() *GetUsersByLoginIdsBadRequest {
	return &GetUsersByLoginIdsBadRequest{}
}

/*GetUsersByLoginIdsBadRequest handles this case with default header values.

  Invalid request
*/
type GetUsersByLoginIdsBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUsersByLoginIdsBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/listByLoginIds][%d] getUsersByLoginIdsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUsersByLoginIdsBadRequest) ToJSONString() string {
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

func (o *GetUsersByLoginIdsBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUsersByLoginIdsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUsersByLoginIdsUnauthorized creates a GetUsersByLoginIdsUnauthorized with default headers values
func NewGetUsersByLoginIdsUnauthorized() *GetUsersByLoginIdsUnauthorized {
	return &GetUsersByLoginIdsUnauthorized{}
}

/*GetUsersByLoginIdsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUsersByLoginIdsUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUsersByLoginIdsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/listByLoginIds][%d] getUsersByLoginIdsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUsersByLoginIdsUnauthorized) ToJSONString() string {
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

func (o *GetUsersByLoginIdsUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUsersByLoginIdsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUsersByLoginIdsForbidden creates a GetUsersByLoginIdsForbidden with default headers values
func NewGetUsersByLoginIdsForbidden() *GetUsersByLoginIdsForbidden {
	return &GetUsersByLoginIdsForbidden{}
}

/*GetUsersByLoginIdsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetUsersByLoginIdsForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetUsersByLoginIdsForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/users/listByLoginIds][%d] getUsersByLoginIdsForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUsersByLoginIdsForbidden) ToJSONString() string {
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

func (o *GetUsersByLoginIdsForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetUsersByLoginIdsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
