// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions_with_namespace

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// RequestPresignedURL1Reader is a Reader for the RequestPresignedURL1 structure.
type RequestPresignedURL1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RequestPresignedURL1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewRequestPresignedURL1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRequestPresignedURL1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/attachments returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRequestPresignedURL1Created creates a RequestPresignedURL1Created with default headers values
func NewRequestPresignedURL1Created() *RequestPresignedURL1Created {
	return &RequestPresignedURL1Created{}
}

/*RequestPresignedURL1Created handles this case with default header values.

  successful operation
*/
type RequestPresignedURL1Created struct {
	Payload *legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse
}

func (o *RequestPresignedURL1Created) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/attachments][%d] requestPresignedUrl1Created  %+v", 201, o.ToJSONString())
}

func (o *RequestPresignedURL1Created) ToJSONString() string {
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

func (o *RequestPresignedURL1Created) GetPayload() *legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse {
	return o.Payload
}

func (o *RequestPresignedURL1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.UploadLocalizedPolicyVersionAttachmentResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRequestPresignedURL1BadRequest creates a RequestPresignedURL1BadRequest with default headers values
func NewRequestPresignedURL1BadRequest() *RequestPresignedURL1BadRequest {
	return &RequestPresignedURL1BadRequest{}
}

/*RequestPresignedURL1BadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40034</td><td>errors.net.accelbyte.platform.legal.invalid_file_type</td></tr><tr><td>40037</td><td>errors.net.accelbyte.platform.legal.invalid_localized_policy_version</td></tr><tr><td>40042</td><td>errors.net.accelbyte.platform.legal.policy_version_freezed</td></tr></table>
*/
type RequestPresignedURL1BadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RequestPresignedURL1BadRequest) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/attachments][%d] requestPresignedUrl1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *RequestPresignedURL1BadRequest) ToJSONString() string {
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

func (o *RequestPresignedURL1BadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RequestPresignedURL1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
