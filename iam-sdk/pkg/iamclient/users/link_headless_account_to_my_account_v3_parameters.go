// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewLinkHeadlessAccountToMyAccountV3Params creates a new LinkHeadlessAccountToMyAccountV3Params object
// with the default values initialized.
func NewLinkHeadlessAccountToMyAccountV3Params() *LinkHeadlessAccountToMyAccountV3Params {
	var ()
	return &LinkHeadlessAccountToMyAccountV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewLinkHeadlessAccountToMyAccountV3ParamsWithTimeout creates a new LinkHeadlessAccountToMyAccountV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewLinkHeadlessAccountToMyAccountV3ParamsWithTimeout(timeout time.Duration) *LinkHeadlessAccountToMyAccountV3Params {
	var ()
	return &LinkHeadlessAccountToMyAccountV3Params{

		timeout: timeout,
	}
}

// NewLinkHeadlessAccountToMyAccountV3ParamsWithContext creates a new LinkHeadlessAccountToMyAccountV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewLinkHeadlessAccountToMyAccountV3ParamsWithContext(ctx context.Context) *LinkHeadlessAccountToMyAccountV3Params {
	var ()
	return &LinkHeadlessAccountToMyAccountV3Params{

		Context: ctx,
	}
}

// NewLinkHeadlessAccountToMyAccountV3ParamsWithHTTPClient creates a new LinkHeadlessAccountToMyAccountV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewLinkHeadlessAccountToMyAccountV3ParamsWithHTTPClient(client *http.Client) *LinkHeadlessAccountToMyAccountV3Params {
	var ()
	return &LinkHeadlessAccountToMyAccountV3Params{
		HTTPClient: client,
	}
}

/*LinkHeadlessAccountToMyAccountV3Params contains all the parameters to send to the API endpoint
for the link headless account to my account v3 operation typically these are written to a http.Request
*/
type LinkHeadlessAccountToMyAccountV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelLinkHeadlessAccountRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the link headless account to my account v3 params
func (o *LinkHeadlessAccountToMyAccountV3Params) WithTimeout(timeout time.Duration) *LinkHeadlessAccountToMyAccountV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the link headless account to my account v3 params
func (o *LinkHeadlessAccountToMyAccountV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the link headless account to my account v3 params
func (o *LinkHeadlessAccountToMyAccountV3Params) WithContext(ctx context.Context) *LinkHeadlessAccountToMyAccountV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the link headless account to my account v3 params
func (o *LinkHeadlessAccountToMyAccountV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the link headless account to my account v3 params
func (o *LinkHeadlessAccountToMyAccountV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the link headless account to my account v3 params
func (o *LinkHeadlessAccountToMyAccountV3Params) WithHTTPClient(client *http.Client) *LinkHeadlessAccountToMyAccountV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the link headless account to my account v3 params
func (o *LinkHeadlessAccountToMyAccountV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the link headless account to my account v3 params
func (o *LinkHeadlessAccountToMyAccountV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the link headless account to my account v3 params
func (o *LinkHeadlessAccountToMyAccountV3Params) WithBody(body *iamclientmodels.ModelLinkHeadlessAccountRequest) *LinkHeadlessAccountToMyAccountV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the link headless account to my account v3 params
func (o *LinkHeadlessAccountToMyAccountV3Params) SetBody(body *iamclientmodels.ModelLinkHeadlessAccountRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *LinkHeadlessAccountToMyAccountV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
