// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package topic

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
)

// NewAdminFilterChatMessageParams creates a new AdminFilterChatMessageParams object
// with the default values initialized.
func NewAdminFilterChatMessageParams() *AdminFilterChatMessageParams {
	var ()
	return &AdminFilterChatMessageParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminFilterChatMessageParamsWithTimeout creates a new AdminFilterChatMessageParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminFilterChatMessageParamsWithTimeout(timeout time.Duration) *AdminFilterChatMessageParams {
	var ()
	return &AdminFilterChatMessageParams{

		timeout: timeout,
	}
}

// NewAdminFilterChatMessageParamsWithContext creates a new AdminFilterChatMessageParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminFilterChatMessageParamsWithContext(ctx context.Context) *AdminFilterChatMessageParams {
	var ()
	return &AdminFilterChatMessageParams{

		Context: ctx,
	}
}

// NewAdminFilterChatMessageParamsWithHTTPClient creates a new AdminFilterChatMessageParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminFilterChatMessageParamsWithHTTPClient(client *http.Client) *AdminFilterChatMessageParams {
	var ()
	return &AdminFilterChatMessageParams{
		HTTPClient: client,
	}
}

/*AdminFilterChatMessageParams contains all the parameters to send to the API endpoint
for the admin filter chat message operation typically these are written to a http.Request
*/
type AdminFilterChatMessageParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.ModelsMessageRequest
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Detail
	  To show what filter driver is used

	*/
	Detail *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin filter chat message params
func (o *AdminFilterChatMessageParams) WithTimeout(timeout time.Duration) *AdminFilterChatMessageParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin filter chat message params
func (o *AdminFilterChatMessageParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin filter chat message params
func (o *AdminFilterChatMessageParams) WithContext(ctx context.Context) *AdminFilterChatMessageParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin filter chat message params
func (o *AdminFilterChatMessageParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin filter chat message params
func (o *AdminFilterChatMessageParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin filter chat message params
func (o *AdminFilterChatMessageParams) WithHTTPClient(client *http.Client) *AdminFilterChatMessageParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin filter chat message params
func (o *AdminFilterChatMessageParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin filter chat message params
func (o *AdminFilterChatMessageParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminFilterChatMessageParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin filter chat message params
func (o *AdminFilterChatMessageParams) WithBody(body *chatclientmodels.ModelsMessageRequest) *AdminFilterChatMessageParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin filter chat message params
func (o *AdminFilterChatMessageParams) SetBody(body *chatclientmodels.ModelsMessageRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin filter chat message params
func (o *AdminFilterChatMessageParams) WithNamespace(namespace string) *AdminFilterChatMessageParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin filter chat message params
func (o *AdminFilterChatMessageParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithDetail adds the detail to the admin filter chat message params
func (o *AdminFilterChatMessageParams) WithDetail(detail *bool) *AdminFilterChatMessageParams {
	o.SetDetail(detail)
	return o
}

// SetDetail adds the detail to the admin filter chat message params
func (o *AdminFilterChatMessageParams) SetDetail(detail *bool) {
	o.Detail = detail
}

// WriteToRequest writes these params to a swagger request
func (o *AdminFilterChatMessageParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Detail != nil {

		// query param detail
		var qrDetail bool
		if o.Detail != nil {
			qrDetail = *o.Detail
		}
		qDetail := swag.FormatBool(qrDetail)
		if qDetail != "" {
			if err := r.SetQueryParam("detail", qDetail); err != nil {
				return err
			}
		}

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
