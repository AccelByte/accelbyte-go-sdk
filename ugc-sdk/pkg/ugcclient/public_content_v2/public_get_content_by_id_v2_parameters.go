// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_v2

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

// NewPublicGetContentByIDV2Params creates a new PublicGetContentByIDV2Params object
// with the default values initialized.
func NewPublicGetContentByIDV2Params() *PublicGetContentByIDV2Params {
	var ()
	return &PublicGetContentByIDV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetContentByIDV2ParamsWithTimeout creates a new PublicGetContentByIDV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetContentByIDV2ParamsWithTimeout(timeout time.Duration) *PublicGetContentByIDV2Params {
	var ()
	return &PublicGetContentByIDV2Params{

		timeout: timeout,
	}
}

// NewPublicGetContentByIDV2ParamsWithContext creates a new PublicGetContentByIDV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetContentByIDV2ParamsWithContext(ctx context.Context) *PublicGetContentByIDV2Params {
	var ()
	return &PublicGetContentByIDV2Params{

		Context: ctx,
	}
}

// NewPublicGetContentByIDV2ParamsWithHTTPClient creates a new PublicGetContentByIDV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetContentByIDV2ParamsWithHTTPClient(client *http.Client) *PublicGetContentByIDV2Params {
	var ()
	return &PublicGetContentByIDV2Params{
		HTTPClient: client,
	}
}

/*PublicGetContentByIDV2Params contains all the parameters to send to the API endpoint
for the public get content by idv2 operation typically these are written to a http.Request
*/
type PublicGetContentByIDV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get content by idv2 params
func (o *PublicGetContentByIDV2Params) WithTimeout(timeout time.Duration) *PublicGetContentByIDV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get content by idv2 params
func (o *PublicGetContentByIDV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get content by idv2 params
func (o *PublicGetContentByIDV2Params) WithContext(ctx context.Context) *PublicGetContentByIDV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get content by idv2 params
func (o *PublicGetContentByIDV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get content by idv2 params
func (o *PublicGetContentByIDV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get content by idv2 params
func (o *PublicGetContentByIDV2Params) WithHTTPClient(client *http.Client) *PublicGetContentByIDV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get content by idv2 params
func (o *PublicGetContentByIDV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get content by idv2 params
func (o *PublicGetContentByIDV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithContentID adds the contentID to the public get content by idv2 params
func (o *PublicGetContentByIDV2Params) WithContentID(contentID string) *PublicGetContentByIDV2Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the public get content by idv2 params
func (o *PublicGetContentByIDV2Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the public get content by idv2 params
func (o *PublicGetContentByIDV2Params) WithNamespace(namespace string) *PublicGetContentByIDV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get content by idv2 params
func (o *PublicGetContentByIDV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetContentByIDV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
