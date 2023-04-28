// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_concurrent_record

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

// NewAdminPutPlayerPublicRecordConcurrentHandlerV1Params creates a new AdminPutPlayerPublicRecordConcurrentHandlerV1Params object
// with the default values initialized.
func NewAdminPutPlayerPublicRecordConcurrentHandlerV1Params() *AdminPutPlayerPublicRecordConcurrentHandlerV1Params {
	var ()
	return &AdminPutPlayerPublicRecordConcurrentHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPutPlayerPublicRecordConcurrentHandlerV1ParamsWithTimeout creates a new AdminPutPlayerPublicRecordConcurrentHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPutPlayerPublicRecordConcurrentHandlerV1ParamsWithTimeout(timeout time.Duration) *AdminPutPlayerPublicRecordConcurrentHandlerV1Params {
	var ()
	return &AdminPutPlayerPublicRecordConcurrentHandlerV1Params{

		timeout: timeout,
	}
}

// NewAdminPutPlayerPublicRecordConcurrentHandlerV1ParamsWithContext creates a new AdminPutPlayerPublicRecordConcurrentHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPutPlayerPublicRecordConcurrentHandlerV1ParamsWithContext(ctx context.Context) *AdminPutPlayerPublicRecordConcurrentHandlerV1Params {
	var ()
	return &AdminPutPlayerPublicRecordConcurrentHandlerV1Params{

		Context: ctx,
	}
}

// NewAdminPutPlayerPublicRecordConcurrentHandlerV1ParamsWithHTTPClient creates a new AdminPutPlayerPublicRecordConcurrentHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPutPlayerPublicRecordConcurrentHandlerV1ParamsWithHTTPClient(client *http.Client) *AdminPutPlayerPublicRecordConcurrentHandlerV1Params {
	var ()
	return &AdminPutPlayerPublicRecordConcurrentHandlerV1Params{
		HTTPClient: client,
	}
}

/*AdminPutPlayerPublicRecordConcurrentHandlerV1Params contains all the parameters to send to the API endpoint
for the admin put player public record concurrent handler v1 operation typically these are written to a http.Request
*/
type AdminPutPlayerPublicRecordConcurrentHandlerV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsAdminConcurrentRecordRequest
	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID who own the record

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin put player public record concurrent handler v1 params
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) WithTimeout(timeout time.Duration) *AdminPutPlayerPublicRecordConcurrentHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin put player public record concurrent handler v1 params
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin put player public record concurrent handler v1 params
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) WithContext(ctx context.Context) *AdminPutPlayerPublicRecordConcurrentHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin put player public record concurrent handler v1 params
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin put player public record concurrent handler v1 params
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin put player public record concurrent handler v1 params
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) WithHTTPClient(client *http.Client) *AdminPutPlayerPublicRecordConcurrentHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin put player public record concurrent handler v1 params
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin put player public record concurrent handler v1 params
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin put player public record concurrent handler v1 params
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) WithBody(body *cloudsaveclientmodels.ModelsAdminConcurrentRecordRequest) *AdminPutPlayerPublicRecordConcurrentHandlerV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin put player public record concurrent handler v1 params
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) SetBody(body *cloudsaveclientmodels.ModelsAdminConcurrentRecordRequest) {
	o.Body = body
}

// WithKey adds the key to the admin put player public record concurrent handler v1 params
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) WithKey(key string) *AdminPutPlayerPublicRecordConcurrentHandlerV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin put player public record concurrent handler v1 params
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the admin put player public record concurrent handler v1 params
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) WithNamespace(namespace string) *AdminPutPlayerPublicRecordConcurrentHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin put player public record concurrent handler v1 params
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin put player public record concurrent handler v1 params
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) WithUserID(userID string) *AdminPutPlayerPublicRecordConcurrentHandlerV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin put player public record concurrent handler v1 params
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPutPlayerPublicRecordConcurrentHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param key
	if err := r.SetPathParam("key", o.Key); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
