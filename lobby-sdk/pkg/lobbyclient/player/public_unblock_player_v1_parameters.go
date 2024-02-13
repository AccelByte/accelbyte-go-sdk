// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package player

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewPublicUnblockPlayerV1Params creates a new PublicUnblockPlayerV1Params object
// with the default values initialized.
func NewPublicUnblockPlayerV1Params() *PublicUnblockPlayerV1Params {
	var ()
	return &PublicUnblockPlayerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUnblockPlayerV1ParamsWithTimeout creates a new PublicUnblockPlayerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUnblockPlayerV1ParamsWithTimeout(timeout time.Duration) *PublicUnblockPlayerV1Params {
	var ()
	return &PublicUnblockPlayerV1Params{

		timeout: timeout,
	}
}

// NewPublicUnblockPlayerV1ParamsWithContext creates a new PublicUnblockPlayerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUnblockPlayerV1ParamsWithContext(ctx context.Context) *PublicUnblockPlayerV1Params {
	var ()
	return &PublicUnblockPlayerV1Params{

		Context: ctx,
	}
}

// NewPublicUnblockPlayerV1ParamsWithHTTPClient creates a new PublicUnblockPlayerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUnblockPlayerV1ParamsWithHTTPClient(client *http.Client) *PublicUnblockPlayerV1Params {
	var ()
	return &PublicUnblockPlayerV1Params{
		HTTPClient: client,
	}
}

/*PublicUnblockPlayerV1Params contains all the parameters to send to the API endpoint
for the public unblock player v1 operation typically these are written to a http.Request
*/
type PublicUnblockPlayerV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelsUnblockPlayerRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public unblock player v1 params
func (o *PublicUnblockPlayerV1Params) WithTimeout(timeout time.Duration) *PublicUnblockPlayerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public unblock player v1 params
func (o *PublicUnblockPlayerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public unblock player v1 params
func (o *PublicUnblockPlayerV1Params) WithContext(ctx context.Context) *PublicUnblockPlayerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public unblock player v1 params
func (o *PublicUnblockPlayerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public unblock player v1 params
func (o *PublicUnblockPlayerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public unblock player v1 params
func (o *PublicUnblockPlayerV1Params) WithHTTPClient(client *http.Client) *PublicUnblockPlayerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public unblock player v1 params
func (o *PublicUnblockPlayerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public unblock player v1 params
func (o *PublicUnblockPlayerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicUnblockPlayerV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public unblock player v1 params
func (o *PublicUnblockPlayerV1Params) WithBody(body *lobbyclientmodels.ModelsUnblockPlayerRequest) *PublicUnblockPlayerV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public unblock player v1 params
func (o *PublicUnblockPlayerV1Params) SetBody(body *lobbyclientmodels.ModelsUnblockPlayerRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public unblock player v1 params
func (o *PublicUnblockPlayerV1Params) WithNamespace(namespace string) *PublicUnblockPlayerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public unblock player v1 params
func (o *PublicUnblockPlayerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUnblockPlayerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
