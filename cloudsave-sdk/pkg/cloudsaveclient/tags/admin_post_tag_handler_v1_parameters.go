// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package tags

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// NewAdminPostTagHandlerV1Params creates a new AdminPostTagHandlerV1Params object
// with the default values initialized.
func NewAdminPostTagHandlerV1Params() *AdminPostTagHandlerV1Params {
	var ()
	return &AdminPostTagHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPostTagHandlerV1ParamsWithTimeout creates a new AdminPostTagHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPostTagHandlerV1ParamsWithTimeout(timeout time.Duration) *AdminPostTagHandlerV1Params {
	var ()
	return &AdminPostTagHandlerV1Params{

		timeout: timeout,
	}
}

// NewAdminPostTagHandlerV1ParamsWithContext creates a new AdminPostTagHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPostTagHandlerV1ParamsWithContext(ctx context.Context) *AdminPostTagHandlerV1Params {
	var ()
	return &AdminPostTagHandlerV1Params{

		Context: ctx,
	}
}

// NewAdminPostTagHandlerV1ParamsWithHTTPClient creates a new AdminPostTagHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPostTagHandlerV1ParamsWithHTTPClient(client *http.Client) *AdminPostTagHandlerV1Params {
	var ()
	return &AdminPostTagHandlerV1Params{
		HTTPClient: client,
	}
}

/*AdminPostTagHandlerV1Params contains all the parameters to send to the API endpoint
for the admin post tag handler v1 operation typically these are written to a http.Request
*/
type AdminPostTagHandlerV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsTagRequest
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin post tag handler v1 params
func (o *AdminPostTagHandlerV1Params) WithTimeout(timeout time.Duration) *AdminPostTagHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin post tag handler v1 params
func (o *AdminPostTagHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin post tag handler v1 params
func (o *AdminPostTagHandlerV1Params) WithContext(ctx context.Context) *AdminPostTagHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin post tag handler v1 params
func (o *AdminPostTagHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin post tag handler v1 params
func (o *AdminPostTagHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin post tag handler v1 params
func (o *AdminPostTagHandlerV1Params) WithHTTPClient(client *http.Client) *AdminPostTagHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin post tag handler v1 params
func (o *AdminPostTagHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin post tag handler v1 params
func (o *AdminPostTagHandlerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminPostTagHandlerV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin post tag handler v1 params
func (o *AdminPostTagHandlerV1Params) WithBody(body *cloudsaveclientmodels.ModelsTagRequest) *AdminPostTagHandlerV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin post tag handler v1 params
func (o *AdminPostTagHandlerV1Params) SetBody(body *cloudsaveclientmodels.ModelsTagRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin post tag handler v1 params
func (o *AdminPostTagHandlerV1Params) WithNamespace(namespace string) *AdminPostTagHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin post tag handler v1 params
func (o *AdminPostTagHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPostTagHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
