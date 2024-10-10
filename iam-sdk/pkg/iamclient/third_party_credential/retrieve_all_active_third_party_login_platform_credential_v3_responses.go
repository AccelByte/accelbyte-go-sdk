// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package third_party_credential

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

// RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Reader is a Reader for the RetrieveAllActiveThirdPartyLoginPlatformCredentialV3 structure.
type RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/platforms/all/clients/active returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK creates a RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK with default headers values
func NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK() *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK {
	return &RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK{}
}

/*RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK handles this case with default header values.

  All Active Third Party Credential Retrieved
*/
type RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK struct {
	Payload []*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/all/clients/active][%d] retrieveAllActiveThirdPartyLoginPlatformCredentialV3OK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK) ToJSONString() string {
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

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK) GetPayload() []*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse {
	return o.Payload
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized creates a RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized with default headers values
func NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized() *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized {
	return &RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized{}
}

/*RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/all/clients/active][%d] retrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized) ToJSONString() string {
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

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden creates a RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden with default headers values
func NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden() *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden {
	return &RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden{}
}

/*RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/all/clients/active][%d] retrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden) ToJSONString() string {
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

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound creates a RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound with default headers values
func NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound() *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound {
	return &RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound{}
}

/*RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10175</td><td>third party credential not found</td></tr></table>
*/
type RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/all/clients/active][%d] retrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound) ToJSONString() string {
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

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError creates a RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError with default headers values
func NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError() *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError {
	return &RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError{}
}

/*RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/all/clients/active][%d] retrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError) ToJSONString() string {
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

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
