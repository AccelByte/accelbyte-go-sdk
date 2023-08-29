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
)

// NewPublicProcessWebLinkPlatformV3Params creates a new PublicProcessWebLinkPlatformV3Params object
// with the default values initialized.
func NewPublicProcessWebLinkPlatformV3Params() *PublicProcessWebLinkPlatformV3Params {
	var ()
	return &PublicProcessWebLinkPlatformV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicProcessWebLinkPlatformV3ParamsWithTimeout creates a new PublicProcessWebLinkPlatformV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicProcessWebLinkPlatformV3ParamsWithTimeout(timeout time.Duration) *PublicProcessWebLinkPlatformV3Params {
	var ()
	return &PublicProcessWebLinkPlatformV3Params{

		timeout: timeout,
	}
}

// NewPublicProcessWebLinkPlatformV3ParamsWithContext creates a new PublicProcessWebLinkPlatformV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicProcessWebLinkPlatformV3ParamsWithContext(ctx context.Context) *PublicProcessWebLinkPlatformV3Params {
	var ()
	return &PublicProcessWebLinkPlatformV3Params{

		Context: ctx,
	}
}

// NewPublicProcessWebLinkPlatformV3ParamsWithHTTPClient creates a new PublicProcessWebLinkPlatformV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicProcessWebLinkPlatformV3ParamsWithHTTPClient(client *http.Client) *PublicProcessWebLinkPlatformV3Params {
	var ()
	return &PublicProcessWebLinkPlatformV3Params{
		HTTPClient: client,
	}
}

/*PublicProcessWebLinkPlatformV3Params contains all the parameters to send to the API endpoint
for the public process web link platform v3 operation typically these are written to a http.Request
*/
type PublicProcessWebLinkPlatformV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Code
	  authorization code from third party

	*/
	Code *string
	/*State
	  state

	*/
	State string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  platform Id to be linked

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public process web link platform v3 params
func (o *PublicProcessWebLinkPlatformV3Params) WithTimeout(timeout time.Duration) *PublicProcessWebLinkPlatformV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public process web link platform v3 params
func (o *PublicProcessWebLinkPlatformV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public process web link platform v3 params
func (o *PublicProcessWebLinkPlatformV3Params) WithContext(ctx context.Context) *PublicProcessWebLinkPlatformV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public process web link platform v3 params
func (o *PublicProcessWebLinkPlatformV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public process web link platform v3 params
func (o *PublicProcessWebLinkPlatformV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public process web link platform v3 params
func (o *PublicProcessWebLinkPlatformV3Params) WithHTTPClient(client *http.Client) *PublicProcessWebLinkPlatformV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public process web link platform v3 params
func (o *PublicProcessWebLinkPlatformV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public process web link platform v3 params
func (o *PublicProcessWebLinkPlatformV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCode adds the code to the public process web link platform v3 params
func (o *PublicProcessWebLinkPlatformV3Params) WithCode(code *string) *PublicProcessWebLinkPlatformV3Params {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the public process web link platform v3 params
func (o *PublicProcessWebLinkPlatformV3Params) SetCode(code *string) {
	o.Code = code
}

// WithState adds the state to the public process web link platform v3 params
func (o *PublicProcessWebLinkPlatformV3Params) WithState(state string) *PublicProcessWebLinkPlatformV3Params {
	o.SetState(state)
	return o
}

// SetState adds the state to the public process web link platform v3 params
func (o *PublicProcessWebLinkPlatformV3Params) SetState(state string) {
	o.State = state
}

// WithNamespace adds the namespace to the public process web link platform v3 params
func (o *PublicProcessWebLinkPlatformV3Params) WithNamespace(namespace string) *PublicProcessWebLinkPlatformV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public process web link platform v3 params
func (o *PublicProcessWebLinkPlatformV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the public process web link platform v3 params
func (o *PublicProcessWebLinkPlatformV3Params) WithPlatformID(platformID string) *PublicProcessWebLinkPlatformV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the public process web link platform v3 params
func (o *PublicProcessWebLinkPlatformV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicProcessWebLinkPlatformV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Code != nil {

		// form param code
		var frCode string
		if o.Code != nil {
			frCode = *o.Code
		}
		fCode := frCode
		if fCode != "" {
			if err := r.SetFormParam("code", fCode); err != nil {
				return err
			}
		}

	}

	// form param state
	frState := o.State
	fState := frState
	if fState != "" {
		if err := r.SetFormParam("state", fState); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
		return err
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
