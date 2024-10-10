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

// AdminGetNamespaceInvitationHistoryV4Reader is a Reader for the AdminGetNamespaceInvitationHistoryV4 structure.
type AdminGetNamespaceInvitationHistoryV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetNamespaceInvitationHistoryV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetNamespaceInvitationHistoryV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetNamespaceInvitationHistoryV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetNamespaceInvitationHistoryV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetNamespaceInvitationHistoryV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetNamespaceInvitationHistoryV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 501:
		result := NewAdminGetNamespaceInvitationHistoryV4NotImplemented()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/admin/namespaces/{namespace}/invitationHistories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetNamespaceInvitationHistoryV4OK creates a AdminGetNamespaceInvitationHistoryV4OK with default headers values
func NewAdminGetNamespaceInvitationHistoryV4OK() *AdminGetNamespaceInvitationHistoryV4OK {
	return &AdminGetNamespaceInvitationHistoryV4OK{}
}

/*AdminGetNamespaceInvitationHistoryV4OK handles this case with default header values.

  Operation succeeded
*/
type AdminGetNamespaceInvitationHistoryV4OK struct {
	Payload *iamclientmodels.ModelInvitationHistoryResponse
}

func (o *AdminGetNamespaceInvitationHistoryV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/invitationHistories][%d] adminGetNamespaceInvitationHistoryV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetNamespaceInvitationHistoryV4OK) ToJSONString() string {
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

func (o *AdminGetNamespaceInvitationHistoryV4OK) GetPayload() *iamclientmodels.ModelInvitationHistoryResponse {
	return o.Payload
}

func (o *AdminGetNamespaceInvitationHistoryV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelInvitationHistoryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetNamespaceInvitationHistoryV4Unauthorized creates a AdminGetNamespaceInvitationHistoryV4Unauthorized with default headers values
func NewAdminGetNamespaceInvitationHistoryV4Unauthorized() *AdminGetNamespaceInvitationHistoryV4Unauthorized {
	return &AdminGetNamespaceInvitationHistoryV4Unauthorized{}
}

/*AdminGetNamespaceInvitationHistoryV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetNamespaceInvitationHistoryV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetNamespaceInvitationHistoryV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/invitationHistories][%d] adminGetNamespaceInvitationHistoryV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetNamespaceInvitationHistoryV4Unauthorized) ToJSONString() string {
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

func (o *AdminGetNamespaceInvitationHistoryV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetNamespaceInvitationHistoryV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetNamespaceInvitationHistoryV4Forbidden creates a AdminGetNamespaceInvitationHistoryV4Forbidden with default headers values
func NewAdminGetNamespaceInvitationHistoryV4Forbidden() *AdminGetNamespaceInvitationHistoryV4Forbidden {
	return &AdminGetNamespaceInvitationHistoryV4Forbidden{}
}

/*AdminGetNamespaceInvitationHistoryV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetNamespaceInvitationHistoryV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetNamespaceInvitationHistoryV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/invitationHistories][%d] adminGetNamespaceInvitationHistoryV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetNamespaceInvitationHistoryV4Forbidden) ToJSONString() string {
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

func (o *AdminGetNamespaceInvitationHistoryV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetNamespaceInvitationHistoryV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetNamespaceInvitationHistoryV4NotFound creates a AdminGetNamespaceInvitationHistoryV4NotFound with default headers values
func NewAdminGetNamespaceInvitationHistoryV4NotFound() *AdminGetNamespaceInvitationHistoryV4NotFound {
	return &AdminGetNamespaceInvitationHistoryV4NotFound{}
}

/*AdminGetNamespaceInvitationHistoryV4NotFound handles this case with default header values.


 */
type AdminGetNamespaceInvitationHistoryV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetNamespaceInvitationHistoryV4NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/invitationHistories][%d] adminGetNamespaceInvitationHistoryV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetNamespaceInvitationHistoryV4NotFound) ToJSONString() string {
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

func (o *AdminGetNamespaceInvitationHistoryV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetNamespaceInvitationHistoryV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetNamespaceInvitationHistoryV4InternalServerError creates a AdminGetNamespaceInvitationHistoryV4InternalServerError with default headers values
func NewAdminGetNamespaceInvitationHistoryV4InternalServerError() *AdminGetNamespaceInvitationHistoryV4InternalServerError {
	return &AdminGetNamespaceInvitationHistoryV4InternalServerError{}
}

/*AdminGetNamespaceInvitationHistoryV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetNamespaceInvitationHistoryV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetNamespaceInvitationHistoryV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/invitationHistories][%d] adminGetNamespaceInvitationHistoryV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetNamespaceInvitationHistoryV4InternalServerError) ToJSONString() string {
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

func (o *AdminGetNamespaceInvitationHistoryV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetNamespaceInvitationHistoryV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetNamespaceInvitationHistoryV4NotImplemented creates a AdminGetNamespaceInvitationHistoryV4NotImplemented with default headers values
func NewAdminGetNamespaceInvitationHistoryV4NotImplemented() *AdminGetNamespaceInvitationHistoryV4NotImplemented {
	return &AdminGetNamespaceInvitationHistoryV4NotImplemented{}
}

/*AdminGetNamespaceInvitationHistoryV4NotImplemented handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20024</td><td>not implemented</td></tr></table>
*/
type AdminGetNamespaceInvitationHistoryV4NotImplemented struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetNamespaceInvitationHistoryV4NotImplemented) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/invitationHistories][%d] adminGetNamespaceInvitationHistoryV4NotImplemented  %+v", 501, o.ToJSONString())
}

func (o *AdminGetNamespaceInvitationHistoryV4NotImplemented) ToJSONString() string {
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

func (o *AdminGetNamespaceInvitationHistoryV4NotImplemented) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetNamespaceInvitationHistoryV4NotImplemented) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
