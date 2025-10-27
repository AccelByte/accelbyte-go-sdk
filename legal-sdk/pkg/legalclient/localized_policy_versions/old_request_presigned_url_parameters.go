// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// NewOldRequestPresignedURLParams creates a new OldRequestPresignedURLParams object
// with the default values initialized.
func NewOldRequestPresignedURLParams() *OldRequestPresignedURLParams {
	var ()
	return &OldRequestPresignedURLParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewOldRequestPresignedURLParamsWithTimeout creates a new OldRequestPresignedURLParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewOldRequestPresignedURLParamsWithTimeout(timeout time.Duration) *OldRequestPresignedURLParams {
	var ()
	return &OldRequestPresignedURLParams{

		timeout: timeout,
	}
}

// NewOldRequestPresignedURLParamsWithContext creates a new OldRequestPresignedURLParams object
// with the default values initialized, and the ability to set a context for a request
func NewOldRequestPresignedURLParamsWithContext(ctx context.Context) *OldRequestPresignedURLParams {
	var ()
	return &OldRequestPresignedURLParams{

		Context: ctx,
	}
}

// NewOldRequestPresignedURLParamsWithHTTPClient creates a new OldRequestPresignedURLParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOldRequestPresignedURLParamsWithHTTPClient(client *http.Client) *OldRequestPresignedURLParams {
	var ()
	return &OldRequestPresignedURLParams{
		HTTPClient: client,
	}
}

/*OldRequestPresignedURLParams contains all the parameters to send to the API endpoint
for the old request presigned url operation typically these are written to a http.Request
*/
type OldRequestPresignedURLParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.UploadPolicyVersionAttachmentRequest
	/*LocalizedPolicyVersionID
	  Localized Policy Version Id

	*/
	LocalizedPolicyVersionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the old request presigned url params
func (o *OldRequestPresignedURLParams) WithTimeout(timeout time.Duration) *OldRequestPresignedURLParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the old request presigned url params
func (o *OldRequestPresignedURLParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the old request presigned url params
func (o *OldRequestPresignedURLParams) WithContext(ctx context.Context) *OldRequestPresignedURLParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the old request presigned url params
func (o *OldRequestPresignedURLParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the old request presigned url params
func (o *OldRequestPresignedURLParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the old request presigned url params
func (o *OldRequestPresignedURLParams) WithHTTPClient(client *http.Client) *OldRequestPresignedURLParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the old request presigned url params
func (o *OldRequestPresignedURLParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the old request presigned url params
func (o *OldRequestPresignedURLParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OldRequestPresignedURLParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the old request presigned url params
func (o *OldRequestPresignedURLParams) WithBody(body *legalclientmodels.UploadPolicyVersionAttachmentRequest) *OldRequestPresignedURLParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the old request presigned url params
func (o *OldRequestPresignedURLParams) SetBody(body *legalclientmodels.UploadPolicyVersionAttachmentRequest) {
	o.Body = body
}

// WithLocalizedPolicyVersionID adds the localizedPolicyVersionID to the old request presigned url params
func (o *OldRequestPresignedURLParams) WithLocalizedPolicyVersionID(localizedPolicyVersionID string) *OldRequestPresignedURLParams {
	o.SetLocalizedPolicyVersionID(localizedPolicyVersionID)
	return o
}

// SetLocalizedPolicyVersionID adds the localizedPolicyVersionId to the old request presigned url params
func (o *OldRequestPresignedURLParams) SetLocalizedPolicyVersionID(localizedPolicyVersionID string) {
	o.LocalizedPolicyVersionID = localizedPolicyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *OldRequestPresignedURLParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param localizedPolicyVersionId
	if err := r.SetPathParam("localizedPolicyVersionId", o.LocalizedPolicyVersionID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
