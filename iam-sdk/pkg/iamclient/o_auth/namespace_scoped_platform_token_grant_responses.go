// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth

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

// NamespaceScopedPlatformTokenGrantReader is a Reader for the NamespaceScopedPlatformTokenGrant structure.
type NamespaceScopedPlatformTokenGrantReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *NamespaceScopedPlatformTokenGrantReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewNamespaceScopedPlatformTokenGrantOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewNamespaceScopedPlatformTokenGrantBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewNamespaceScopedPlatformTokenGrantUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/oauth/namespaces/{namespace}/platforms/{platformId}/token returns an error %d: %s", response.Code(), string(data))
	}
}

// NewNamespaceScopedPlatformTokenGrantOK creates a NamespaceScopedPlatformTokenGrantOK with default headers values
func NewNamespaceScopedPlatformTokenGrantOK() *NamespaceScopedPlatformTokenGrantOK {
	return &NamespaceScopedPlatformTokenGrantOK{}
}

/*NamespaceScopedPlatformTokenGrantOK handles this case with default header values.

  Access Token returned
*/
type NamespaceScopedPlatformTokenGrantOK struct {
	Payload *iamclientmodels.OauthmodelTokenResponse
}

func (o *NamespaceScopedPlatformTokenGrantOK) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/namespaces/{namespace}/platforms/{platformId}/token][%d] namespaceScopedPlatformTokenGrantOK  %+v", 200, o.ToJSONString())
}

func (o *NamespaceScopedPlatformTokenGrantOK) ToJSONString() string {
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

func (o *NamespaceScopedPlatformTokenGrantOK) GetPayload() *iamclientmodels.OauthmodelTokenResponse {
	return o.Payload
}

func (o *NamespaceScopedPlatformTokenGrantOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelTokenResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewNamespaceScopedPlatformTokenGrantBadRequest creates a NamespaceScopedPlatformTokenGrantBadRequest with default headers values
func NewNamespaceScopedPlatformTokenGrantBadRequest() *NamespaceScopedPlatformTokenGrantBadRequest {
	return &NamespaceScopedPlatformTokenGrantBadRequest{}
}

/*NamespaceScopedPlatformTokenGrantBadRequest handles this case with default header values.

  General request error
*/
type NamespaceScopedPlatformTokenGrantBadRequest struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *NamespaceScopedPlatformTokenGrantBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/namespaces/{namespace}/platforms/{platformId}/token][%d] namespaceScopedPlatformTokenGrantBadRequest  %+v", 400, o.ToJSONString())
}

func (o *NamespaceScopedPlatformTokenGrantBadRequest) ToJSONString() string {
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

func (o *NamespaceScopedPlatformTokenGrantBadRequest) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *NamespaceScopedPlatformTokenGrantBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewNamespaceScopedPlatformTokenGrantUnauthorized creates a NamespaceScopedPlatformTokenGrantUnauthorized with default headers values
func NewNamespaceScopedPlatformTokenGrantUnauthorized() *NamespaceScopedPlatformTokenGrantUnauthorized {
	return &NamespaceScopedPlatformTokenGrantUnauthorized{}
}

/*NamespaceScopedPlatformTokenGrantUnauthorized handles this case with default header values.

  Client authentication failed
*/
type NamespaceScopedPlatformTokenGrantUnauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *NamespaceScopedPlatformTokenGrantUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/namespaces/{namespace}/platforms/{platformId}/token][%d] namespaceScopedPlatformTokenGrantUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *NamespaceScopedPlatformTokenGrantUnauthorized) ToJSONString() string {
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

func (o *NamespaceScopedPlatformTokenGrantUnauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *NamespaceScopedPlatformTokenGrantUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
