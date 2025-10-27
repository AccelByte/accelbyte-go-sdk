// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions

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

// OldUpdateLocalizedPolicyVersionReader is a Reader for the OldUpdateLocalizedPolicyVersion structure.
type OldUpdateLocalizedPolicyVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OldUpdateLocalizedPolicyVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewOldUpdateLocalizedPolicyVersionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewOldUpdateLocalizedPolicyVersionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /agreement/admin/localized-policy-versions/{localizedPolicyVersionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewOldUpdateLocalizedPolicyVersionOK creates a OldUpdateLocalizedPolicyVersionOK with default headers values
func NewOldUpdateLocalizedPolicyVersionOK() *OldUpdateLocalizedPolicyVersionOK {
	return &OldUpdateLocalizedPolicyVersionOK{}
}

/*OldUpdateLocalizedPolicyVersionOK handles this case with default header values.

  successful operation
*/
type OldUpdateLocalizedPolicyVersionOK struct {
	Payload *legalclientmodels.UpdateLocalizedPolicyVersionResponse
}

func (o *OldUpdateLocalizedPolicyVersionOK) Error() string {
	return fmt.Sprintf("[PUT /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}][%d] oldUpdateLocalizedPolicyVersionOK  %+v", 200, o.ToJSONString())
}

func (o *OldUpdateLocalizedPolicyVersionOK) ToJSONString() string {
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

func (o *OldUpdateLocalizedPolicyVersionOK) GetPayload() *legalclientmodels.UpdateLocalizedPolicyVersionResponse {
	return o.Payload
}

func (o *OldUpdateLocalizedPolicyVersionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.UpdateLocalizedPolicyVersionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewOldUpdateLocalizedPolicyVersionBadRequest creates a OldUpdateLocalizedPolicyVersionBadRequest with default headers values
func NewOldUpdateLocalizedPolicyVersionBadRequest() *OldUpdateLocalizedPolicyVersionBadRequest {
	return &OldUpdateLocalizedPolicyVersionBadRequest{}
}

/*OldUpdateLocalizedPolicyVersionBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.invalid_policy_version</td></tr></table>
*/
type OldUpdateLocalizedPolicyVersionBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldUpdateLocalizedPolicyVersionBadRequest) Error() string {
	return fmt.Sprintf("[PUT /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}][%d] oldUpdateLocalizedPolicyVersionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *OldUpdateLocalizedPolicyVersionBadRequest) ToJSONString() string {
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

func (o *OldUpdateLocalizedPolicyVersionBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldUpdateLocalizedPolicyVersionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
