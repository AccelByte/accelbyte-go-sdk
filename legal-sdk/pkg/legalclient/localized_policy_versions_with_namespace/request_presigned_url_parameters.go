// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions_with_namespace

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

// NewRequestPresignedURLParams creates a new RequestPresignedURLParams object
// with the default values initialized.
func NewRequestPresignedURLParams() *RequestPresignedURLParams {
	var ()
	return &RequestPresignedURLParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRequestPresignedURLParamsWithTimeout creates a new RequestPresignedURLParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRequestPresignedURLParamsWithTimeout(timeout time.Duration) *RequestPresignedURLParams {
	var ()
	return &RequestPresignedURLParams{

		timeout: timeout,
	}
}

// NewRequestPresignedURLParamsWithContext creates a new RequestPresignedURLParams object
// with the default values initialized, and the ability to set a context for a request
func NewRequestPresignedURLParamsWithContext(ctx context.Context) *RequestPresignedURLParams {
	var ()
	return &RequestPresignedURLParams{

		Context: ctx,
	}
}

// NewRequestPresignedURLParamsWithHTTPClient creates a new RequestPresignedURLParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRequestPresignedURLParamsWithHTTPClient(client *http.Client) *RequestPresignedURLParams {
	var ()
	return &RequestPresignedURLParams{
		HTTPClient: client,
	}
}

/*RequestPresignedURLParams contains all the parameters to send to the API endpoint
for the request presigned url operation typically these are written to a http.Request
*/
type RequestPresignedURLParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.UploadPolicyVersionAttachmentRequest
	/*LocalizedPolicyVersionID
	  Localized Policy Version Id

	*/
	LocalizedPolicyVersionID string
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the request presigned url params
func (o *RequestPresignedURLParams) WithTimeout(timeout time.Duration) *RequestPresignedURLParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the request presigned url params
func (o *RequestPresignedURLParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the request presigned url params
func (o *RequestPresignedURLParams) WithContext(ctx context.Context) *RequestPresignedURLParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the request presigned url params
func (o *RequestPresignedURLParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the request presigned url params
func (o *RequestPresignedURLParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the request presigned url params
func (o *RequestPresignedURLParams) WithHTTPClient(client *http.Client) *RequestPresignedURLParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the request presigned url params
func (o *RequestPresignedURLParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the request presigned url params
func (o *RequestPresignedURLParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RequestPresignedURLParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the request presigned url params
func (o *RequestPresignedURLParams) WithBody(body *legalclientmodels.UploadPolicyVersionAttachmentRequest) *RequestPresignedURLParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the request presigned url params
func (o *RequestPresignedURLParams) SetBody(body *legalclientmodels.UploadPolicyVersionAttachmentRequest) {
	o.Body = body
}

// WithLocalizedPolicyVersionID adds the localizedPolicyVersionID to the request presigned url params
func (o *RequestPresignedURLParams) WithLocalizedPolicyVersionID(localizedPolicyVersionID string) *RequestPresignedURLParams {
	o.SetLocalizedPolicyVersionID(localizedPolicyVersionID)
	return o
}

// SetLocalizedPolicyVersionID adds the localizedPolicyVersionId to the request presigned url params
func (o *RequestPresignedURLParams) SetLocalizedPolicyVersionID(localizedPolicyVersionID string) {
	o.LocalizedPolicyVersionID = localizedPolicyVersionID
}

// WithNamespace adds the namespace to the request presigned url params
func (o *RequestPresignedURLParams) WithNamespace(namespace string) *RequestPresignedURLParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the request presigned url params
func (o *RequestPresignedURLParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RequestPresignedURLParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
