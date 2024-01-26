// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inbox

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
)

// NewAdminUnsendInboxMessageParams creates a new AdminUnsendInboxMessageParams object
// with the default values initialized.
func NewAdminUnsendInboxMessageParams() *AdminUnsendInboxMessageParams {
	var ()
	return &AdminUnsendInboxMessageParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUnsendInboxMessageParamsWithTimeout creates a new AdminUnsendInboxMessageParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUnsendInboxMessageParamsWithTimeout(timeout time.Duration) *AdminUnsendInboxMessageParams {
	var ()
	return &AdminUnsendInboxMessageParams{

		timeout: timeout,
	}
}

// NewAdminUnsendInboxMessageParamsWithContext creates a new AdminUnsendInboxMessageParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUnsendInboxMessageParamsWithContext(ctx context.Context) *AdminUnsendInboxMessageParams {
	var ()
	return &AdminUnsendInboxMessageParams{

		Context: ctx,
	}
}

// NewAdminUnsendInboxMessageParamsWithHTTPClient creates a new AdminUnsendInboxMessageParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUnsendInboxMessageParamsWithHTTPClient(client *http.Client) *AdminUnsendInboxMessageParams {
	var ()
	return &AdminUnsendInboxMessageParams{
		HTTPClient: client,
	}
}

/*AdminUnsendInboxMessageParams contains all the parameters to send to the API endpoint
for the admin unsend inbox message operation typically these are written to a http.Request
*/
type AdminUnsendInboxMessageParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.ModelsUnsendInboxMessageRequest
	/*Inbox
	  message

	*/
	Inbox string
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

// WithTimeout adds the timeout to the admin unsend inbox message params
func (o *AdminUnsendInboxMessageParams) WithTimeout(timeout time.Duration) *AdminUnsendInboxMessageParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin unsend inbox message params
func (o *AdminUnsendInboxMessageParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin unsend inbox message params
func (o *AdminUnsendInboxMessageParams) WithContext(ctx context.Context) *AdminUnsendInboxMessageParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin unsend inbox message params
func (o *AdminUnsendInboxMessageParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin unsend inbox message params
func (o *AdminUnsendInboxMessageParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin unsend inbox message params
func (o *AdminUnsendInboxMessageParams) WithHTTPClient(client *http.Client) *AdminUnsendInboxMessageParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin unsend inbox message params
func (o *AdminUnsendInboxMessageParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin unsend inbox message params
func (o *AdminUnsendInboxMessageParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUnsendInboxMessageParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin unsend inbox message params
func (o *AdminUnsendInboxMessageParams) WithBody(body *chatclientmodels.ModelsUnsendInboxMessageRequest) *AdminUnsendInboxMessageParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin unsend inbox message params
func (o *AdminUnsendInboxMessageParams) SetBody(body *chatclientmodels.ModelsUnsendInboxMessageRequest) {
	o.Body = body
}

// WithInbox adds the inbox to the admin unsend inbox message params
func (o *AdminUnsendInboxMessageParams) WithInbox(inbox string) *AdminUnsendInboxMessageParams {
	o.SetInbox(inbox)
	return o
}

// SetInbox adds the inbox to the admin unsend inbox message params
func (o *AdminUnsendInboxMessageParams) SetInbox(inbox string) {
	o.Inbox = inbox
}

// WithNamespace adds the namespace to the admin unsend inbox message params
func (o *AdminUnsendInboxMessageParams) WithNamespace(namespace string) *AdminUnsendInboxMessageParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin unsend inbox message params
func (o *AdminUnsendInboxMessageParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUnsendInboxMessageParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param inbox
	if err := r.SetPathParam("inbox", o.Inbox); err != nil {
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
