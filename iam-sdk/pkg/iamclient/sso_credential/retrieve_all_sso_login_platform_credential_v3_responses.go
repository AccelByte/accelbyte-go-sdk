// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sso_credential

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

// RetrieveAllSSOLoginPlatformCredentialV3Reader is a Reader for the RetrieveAllSSOLoginPlatformCredentialV3 structure.
type RetrieveAllSSOLoginPlatformCredentialV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveAllSSOLoginPlatformCredentialV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveAllSSOLoginPlatformCredentialV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRetrieveAllSSOLoginPlatformCredentialV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRetrieveAllSSOLoginPlatformCredentialV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveAllSSOLoginPlatformCredentialV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRetrieveAllSSOLoginPlatformCredentialV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/platforms/sso returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveAllSSOLoginPlatformCredentialV3OK creates a RetrieveAllSSOLoginPlatformCredentialV3OK with default headers values
func NewRetrieveAllSSOLoginPlatformCredentialV3OK() *RetrieveAllSSOLoginPlatformCredentialV3OK {
	return &RetrieveAllSSOLoginPlatformCredentialV3OK{}
}

/*RetrieveAllSSOLoginPlatformCredentialV3OK handles this case with default header values.

  All Active SSO Credential Retrieved
*/
type RetrieveAllSSOLoginPlatformCredentialV3OK struct {
	Payload []*iamclientmodels.ModelSSOPlatformCredentialResponse
}

func (o *RetrieveAllSSOLoginPlatformCredentialV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/sso][%d] retrieveAllSsoLoginPlatformCredentialV3OK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveAllSSOLoginPlatformCredentialV3OK) ToJSONString() string {
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

func (o *RetrieveAllSSOLoginPlatformCredentialV3OK) GetPayload() []*iamclientmodels.ModelSSOPlatformCredentialResponse {
	return o.Payload
}

func (o *RetrieveAllSSOLoginPlatformCredentialV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveAllSSOLoginPlatformCredentialV3Unauthorized creates a RetrieveAllSSOLoginPlatformCredentialV3Unauthorized with default headers values
func NewRetrieveAllSSOLoginPlatformCredentialV3Unauthorized() *RetrieveAllSSOLoginPlatformCredentialV3Unauthorized {
	return &RetrieveAllSSOLoginPlatformCredentialV3Unauthorized{}
}

/*RetrieveAllSSOLoginPlatformCredentialV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type RetrieveAllSSOLoginPlatformCredentialV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveAllSSOLoginPlatformCredentialV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/sso][%d] retrieveAllSsoLoginPlatformCredentialV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *RetrieveAllSSOLoginPlatformCredentialV3Unauthorized) ToJSONString() string {
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

func (o *RetrieveAllSSOLoginPlatformCredentialV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveAllSSOLoginPlatformCredentialV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveAllSSOLoginPlatformCredentialV3Forbidden creates a RetrieveAllSSOLoginPlatformCredentialV3Forbidden with default headers values
func NewRetrieveAllSSOLoginPlatformCredentialV3Forbidden() *RetrieveAllSSOLoginPlatformCredentialV3Forbidden {
	return &RetrieveAllSSOLoginPlatformCredentialV3Forbidden{}
}

/*RetrieveAllSSOLoginPlatformCredentialV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type RetrieveAllSSOLoginPlatformCredentialV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveAllSSOLoginPlatformCredentialV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/sso][%d] retrieveAllSsoLoginPlatformCredentialV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *RetrieveAllSSOLoginPlatformCredentialV3Forbidden) ToJSONString() string {
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

func (o *RetrieveAllSSOLoginPlatformCredentialV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveAllSSOLoginPlatformCredentialV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveAllSSOLoginPlatformCredentialV3NotFound creates a RetrieveAllSSOLoginPlatformCredentialV3NotFound with default headers values
func NewRetrieveAllSSOLoginPlatformCredentialV3NotFound() *RetrieveAllSSOLoginPlatformCredentialV3NotFound {
	return &RetrieveAllSSOLoginPlatformCredentialV3NotFound{}
}

/*RetrieveAllSSOLoginPlatformCredentialV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10175</td><td>third party credential not found</td></tr></table>
*/
type RetrieveAllSSOLoginPlatformCredentialV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveAllSSOLoginPlatformCredentialV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/sso][%d] retrieveAllSsoLoginPlatformCredentialV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveAllSSOLoginPlatformCredentialV3NotFound) ToJSONString() string {
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

func (o *RetrieveAllSSOLoginPlatformCredentialV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveAllSSOLoginPlatformCredentialV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveAllSSOLoginPlatformCredentialV3InternalServerError creates a RetrieveAllSSOLoginPlatformCredentialV3InternalServerError with default headers values
func NewRetrieveAllSSOLoginPlatformCredentialV3InternalServerError() *RetrieveAllSSOLoginPlatformCredentialV3InternalServerError {
	return &RetrieveAllSSOLoginPlatformCredentialV3InternalServerError{}
}

/*RetrieveAllSSOLoginPlatformCredentialV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type RetrieveAllSSOLoginPlatformCredentialV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveAllSSOLoginPlatformCredentialV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/sso][%d] retrieveAllSsoLoginPlatformCredentialV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RetrieveAllSSOLoginPlatformCredentialV3InternalServerError) ToJSONString() string {
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

func (o *RetrieveAllSSOLoginPlatformCredentialV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveAllSSOLoginPlatformCredentialV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
