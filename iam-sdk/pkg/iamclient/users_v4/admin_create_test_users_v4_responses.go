// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// AdminCreateTestUsersV4Reader is a Reader for the AdminCreateTestUsersV4 structure.
type AdminCreateTestUsersV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateTestUsersV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateTestUsersV4Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateTestUsersV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateTestUsersV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 501:
		result := NewAdminCreateTestUsersV4NotImplemented()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/namespaces/{namespace}/test_users returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateTestUsersV4Created creates a AdminCreateTestUsersV4Created with default headers values
func NewAdminCreateTestUsersV4Created() *AdminCreateTestUsersV4Created {
	return &AdminCreateTestUsersV4Created{}
}

/*AdminCreateTestUsersV4Created handles this case with default header values.

  Created
*/
type AdminCreateTestUsersV4Created struct {
	Payload *iamclientmodels.AccountCreateTestUsersResponseV4
}

func (o *AdminCreateTestUsersV4Created) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/test_users][%d] adminCreateTestUsersV4Created  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateTestUsersV4Created) ToJSONString() string {
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

func (o *AdminCreateTestUsersV4Created) GetPayload() *iamclientmodels.AccountCreateTestUsersResponseV4 {
	return o.Payload
}

func (o *AdminCreateTestUsersV4Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountCreateTestUsersResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateTestUsersV4BadRequest creates a AdminCreateTestUsersV4BadRequest with default headers values
func NewAdminCreateTestUsersV4BadRequest() *AdminCreateTestUsersV4BadRequest {
	return &AdminCreateTestUsersV4BadRequest{}
}

/*AdminCreateTestUsersV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminCreateTestUsersV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateTestUsersV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/test_users][%d] adminCreateTestUsersV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateTestUsersV4BadRequest) ToJSONString() string {
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

func (o *AdminCreateTestUsersV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateTestUsersV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateTestUsersV4InternalServerError creates a AdminCreateTestUsersV4InternalServerError with default headers values
func NewAdminCreateTestUsersV4InternalServerError() *AdminCreateTestUsersV4InternalServerError {
	return &AdminCreateTestUsersV4InternalServerError{}
}

/*AdminCreateTestUsersV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminCreateTestUsersV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateTestUsersV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/test_users][%d] adminCreateTestUsersV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateTestUsersV4InternalServerError) ToJSONString() string {
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

func (o *AdminCreateTestUsersV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateTestUsersV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateTestUsersV4NotImplemented creates a AdminCreateTestUsersV4NotImplemented with default headers values
func NewAdminCreateTestUsersV4NotImplemented() *AdminCreateTestUsersV4NotImplemented {
	return &AdminCreateTestUsersV4NotImplemented{}
}

/*AdminCreateTestUsersV4NotImplemented handles this case with default header values.


 */
type AdminCreateTestUsersV4NotImplemented struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateTestUsersV4NotImplemented) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/test_users][%d] adminCreateTestUsersV4NotImplemented  %+v", 501, o.ToJSONString())
}

func (o *AdminCreateTestUsersV4NotImplemented) ToJSONString() string {
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

func (o *AdminCreateTestUsersV4NotImplemented) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateTestUsersV4NotImplemented) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
