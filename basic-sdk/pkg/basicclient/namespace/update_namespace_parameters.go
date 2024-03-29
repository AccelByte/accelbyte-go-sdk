// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package namespace

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// NewUpdateNamespaceParams creates a new UpdateNamespaceParams object
// with the default values initialized.
func NewUpdateNamespaceParams() *UpdateNamespaceParams {
	var ()
	return &UpdateNamespaceParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateNamespaceParamsWithTimeout creates a new UpdateNamespaceParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateNamespaceParamsWithTimeout(timeout time.Duration) *UpdateNamespaceParams {
	var ()
	return &UpdateNamespaceParams{

		timeout: timeout,
	}
}

// NewUpdateNamespaceParamsWithContext creates a new UpdateNamespaceParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateNamespaceParamsWithContext(ctx context.Context) *UpdateNamespaceParams {
	var ()
	return &UpdateNamespaceParams{

		Context: ctx,
	}
}

// NewUpdateNamespaceParamsWithHTTPClient creates a new UpdateNamespaceParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateNamespaceParamsWithHTTPClient(client *http.Client) *UpdateNamespaceParams {
	var ()
	return &UpdateNamespaceParams{
		HTTPClient: client,
	}
}

/*UpdateNamespaceParams contains all the parameters to send to the API endpoint
for the update namespace operation typically these are written to a http.Request
*/
type UpdateNamespaceParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.NamespaceUpdate
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update namespace params
func (o *UpdateNamespaceParams) WithTimeout(timeout time.Duration) *UpdateNamespaceParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update namespace params
func (o *UpdateNamespaceParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update namespace params
func (o *UpdateNamespaceParams) WithContext(ctx context.Context) *UpdateNamespaceParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update namespace params
func (o *UpdateNamespaceParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update namespace params
func (o *UpdateNamespaceParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update namespace params
func (o *UpdateNamespaceParams) WithHTTPClient(client *http.Client) *UpdateNamespaceParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update namespace params
func (o *UpdateNamespaceParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update namespace params
func (o *UpdateNamespaceParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateNamespaceParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update namespace params
func (o *UpdateNamespaceParams) WithBody(body *basicclientmodels.NamespaceUpdate) *UpdateNamespaceParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update namespace params
func (o *UpdateNamespaceParams) SetBody(body *basicclientmodels.NamespaceUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update namespace params
func (o *UpdateNamespaceParams) WithNamespace(namespace string) *UpdateNamespaceParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update namespace params
func (o *UpdateNamespaceParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateNamespaceParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
